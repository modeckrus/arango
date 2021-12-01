package storages

import (
	"arango/logger"
	"arango/model"
	"context"

	driver "github.com/arangodb/go-driver"
	"github.com/sirupsen/logrus"
)

type UserArango struct {
	C    driver.Client
	Db   driver.Database
	Coll driver.Collection
	StorageHelper
}

func NewUserArango(ctx context.Context, c driver.Client) (UserArango, error) {
	result := UserArango{}
	dbName := "backend"
	collName := "users"
	exist, err := c.DatabaseExists(ctx, dbName)
	if err != nil {
		return result, err
	}
	if !exist {
		_, err = c.CreateDatabase(ctx, dbName, &driver.CreateDatabaseOptions{})
		if err != nil {
			return result, err
		}

	}
	db, err := c.Database(ctx, dbName)
	if err != nil {
		return result, err
	}

	exist, err = db.CollectionExists(ctx, collName)
	if err != nil {
		return result, err
	}
	if !exist {
		_, err = db.CreateCollection(ctx, collName, &driver.CreateCollectionOptions{})
		if err != nil {
			return result, err
		}
	}
	coll, err := db.Collection(ctx, collName)
	if err != nil {
		return result, err
	}
	result = UserArango{
		C:    c,
		Db:   db,
		Coll: coll,
		StorageHelper: StorageHelper{
			CollName: collName,
		},
	}
	err = result.EnsureUsers(ctx)
	if err != nil {
		return result, err
	}
	err = result.EnsureIndex(ctx)
	if err != nil {
		return result, err
	}
	return result, nil
}
func (s UserArango) EnsureIndex(ctx context.Context) error {
	index, new, err := s.Coll.EnsureFullTextIndex(ctx, []string{"name"}, &driver.EnsureFullTextIndexOptions{
		MinLength: 3,
	})
	if err != nil {
		return err
	}
	logrus.Infof("Ensured Index: Index(%v), New(%v), Err(%v)", index, new, err)
	return nil
}
func (s UserArango) EnsureUsers(ctx context.Context) error {
	_, err := s.Id(ctx, model.Root.Id)
	if err != nil {
		_, err = s.Coll.CreateDocument(ctx, model.Root.ToUpsert())
		if err != nil {
			return err
		}

	}
	_, err = s.Id(ctx, model.System.Id)
	if err != nil {
		_, err = s.Coll.CreateDocument(ctx, model.System.ToUpsert())
		if err != nil {
			return err
		}
	}
	return nil
}
func (s UserArango) Create(ctx context.Context, i model.CreateUser) (model.User, error) {
	meta, err := s.Coll.CreateDocument(ctx, i)
	result := model.User{}
	if err != nil {
		return result, err
	}
	return s.Id(ctx, meta.ID.String())
}

func (s UserArango) Update(ctx context.Context, i model.UpdateUser) (model.User, error) {
	result := model.User{}

	meta, err := s.Coll.UpdateDocument(ctx, i.Id, i)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	i.Id = meta.ID.String()
	return s.Id(ctx, i.Id)
}

func (s UserArango) Delete(ctx context.Context, id string) error {

	_, err := s.Coll.RemoveDocument(ctx, id)
	if err != nil {
		return logger.Arango(ctx, err)
	}
	return nil
}

func (s UserArango) Id(ctx context.Context, id string) (model.User, error) {
	result := model.User{}

	_, err := s.Coll.ReadDocument(ctx, id, &result)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	return result, nil
}

func (s UserArango) Search(ctx context.Context, i model.SearchI) (model.UserList, error) {
	result := model.UserList{}
	query := ""
	vars := make(map[string]interface{})
	if i.Text != nil {
		vars["text"] = *i.Text
		query = `for user in Fulltext(users, "name", CONCAT("prefix:", @text), @limit)
		filter user.level >= @level
		limit @skip, @limit
		let files =(
			for edge in fileOwned
				filter edge._from == user._id
				return document(edge._to)
		)
		return merge(user, {"files":files})`
	} else {
		query = `for user in users
		filter user.level >= @level
		limit @skip, @limit
		let files =(
			for edge in fileOwned
				filter edge._from == user._id
				return document(edge._to)
		)
		return merge(user, {"files":files})`
	}
	vars["limit"] = i.Limit
	vars["skip"] = i.Skip
	vars["level"] = model.UserLevel_Auth

	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	total := curs.Count()
	defer curs.Close()
	list := []model.UserWithFile{}
	for {
		var doc model.UserWithFile
		_, err = curs.ReadDocument(ctx, &doc)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return result, logger.Arango(ctx, err)
		}
		list = append(list, doc)
	}
	result = model.UserList{
		Total: total,
		List:  list,
	}
	return result, nil
}

func (s UserArango) GetByEmail(ctx context.Context, email string) (model.User, error) {
	result := model.User{}
	query := `for user in users
    filter user.email == @email
    return user`
	vars := make(map[string]interface{})
	vars["email"] = email
	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	defer curs.Close()
	for {
		_, err = curs.ReadDocument(ctx, &result)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return result, logger.Arango(ctx, err)
		}
		return result, nil
	}
	return result, logger.NotFound(ctx, email)
}
