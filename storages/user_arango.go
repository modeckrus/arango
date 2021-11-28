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
func (s UserArango) Create(ctx context.Context, i model.CreateUser) (*model.User, error) {
	meta, err := s.Coll.CreateDocument(ctx, i)
	if err != nil {
		return nil, err
	}
	return s.Id(ctx, meta.ID.String())
}

func (s UserArango) Update(ctx context.Context, i model.UpdateUser) (*model.User, error) {
	docId := driver.DocumentID(i.Id)
	if err := docId.Validate(); err != nil {
		return nil, logger.InvalidId(ctx, i.Id)
	}
	meta, err := s.Coll.UpdateDocument(ctx, docId.Key(), i)
	if err != nil {
		return nil, err
	}
	i.Id = meta.ID.String()
	return s.Id(ctx, i.Id)
}

func (s UserArango) Delete(ctx context.Context, id string) error {
	docId := driver.DocumentID(id)
	if err := docId.Validate(); err != nil {
		return logger.InvalidId(ctx, id)
	}
	_, err := s.Coll.RemoveDocument(ctx, docId.Key())
	if err != nil {
		return err
	}
	return nil
}

func (s UserArango) Id(ctx context.Context, id string) (*model.User, error) {
	docId := driver.DocumentID(id)
	if err := docId.Validate(); err != nil {
		return nil, logger.InvalidId(ctx, id)
	}
	user := model.User{}
	_, err := s.Coll.ReadDocument(ctx, docId.Key(), &user)
	if err != nil {
		return nil, err
	}
	return &user, nil
}

func (s UserArango) Search(ctx context.Context, i model.SearchI) (*model.UserList, error) {
	query := ""
	vars := make(map[string]interface{})
	if i.Text != nil {
		vars["text"] = *i.Text
		query = `for user in Fulltext(users, "name", CONCAT("prefix:", @text), @limit)
		filter user.level > @level
		limit @skip, @limit
		return user`
	} else {
		query = `for user in users
		filter user.level > @level
		limit @skip, @limit
		return user`
	}
	vars["limit"] = i.Limit
	vars["skip"] = i.Skip
	vars["level"] = model.UserLevel_Auth

	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return nil, err
	}
	total := curs.Count()
	defer curs.Close()
	result := []model.UserItem{}
	for {
		var doc model.UserItem
		_, err = curs.ReadDocument(ctx, &doc)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return nil, err
		}
		result = append(result, doc)
	}
	return &model.UserList{
		Total: total,
		List:  result,
	}, nil
}

func (s UserArango) GetByEmail(ctx context.Context, email string) (*model.User, error) {
	query := `for user in users
    filter user.email == @email
    return user`
	vars := make(map[string]interface{})
	vars["email"] = email
	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return nil, err
	}
	defer curs.Close()
	for {
		var doc model.User
		_, err = curs.ReadDocument(ctx, &doc)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return nil, err
		}
		return &doc, nil
	}
	return nil, logger.NotFound(ctx, email)
}
