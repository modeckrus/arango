package storages

import (
	"arango/logger"
	"arango/model"
	"context"

	driver "github.com/arangodb/go-driver"
)

type FileArango struct {
	C     driver.Client
	Db    driver.Database
	Coll  driver.Collection
	Owned driver.Collection
}

func NewFileArango(ctx context.Context, c driver.Client) (FileArango, error) {
	result := FileArango{}
	dbName := "backend"
	collName := "files"
	ownedName := "fileOwned"
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
		_, err = db.CreateCollection(ctx, collName, &driver.CreateCollectionOptions{
			Type: driver.CollectionTypeDocument,
		})
		if err != nil {
			return result, err
		}
	}
	coll, err := db.Collection(ctx, collName)
	if err != nil {
		return result, err
	}
	exist, err = db.CollectionExists(ctx, ownedName)
	if err != nil {
		return result, err
	}
	if !exist {
		_, err = db.CreateCollection(ctx, ownedName, &driver.CreateCollectionOptions{
			Type: driver.CollectionTypeEdge,
		})
		if err != nil {
			return result, err
		}
	}
	owned, err := db.Collection(ctx, ownedName)
	if err != nil {
		return result, err
	}
	result = FileArango{
		C:     c,
		Db:    db,
		Coll:  coll,
		Owned: owned,
	}
	return result, nil
}

func (s FileArango) Create(ctx context.Context, i model.CreateFile) (*model.File, error) {
	meta, err := s.Coll.CreateDocument(ctx, i)
	if err != nil {
		return nil, logger.Arango(ctx, err)
	}
	u, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return nil, logger.SomethingWrong(ctx)
	}
	edge := model.Edge{
		From: u.Id,
		To:   meta.ID.String(),
	}
	_, err = s.Owned.CreateDocument(ctx, edge)
	if err != nil {
		return nil, logger.Arango(ctx, err)
	}
	result := model.File{
		Id:   meta.ID.String(),
		Name: i.Name,
		Type: i.Type,
	}
	return &result, nil
}

func (s FileArango) Id(ctx context.Context, id string) (*model.File, error) {
	docId := driver.DocumentID(id)
	if err := docId.Validate(); err != nil {
		return nil, logger.InvalidId(ctx, id)
	}
	result := model.File{}
	_, err := s.Coll.ReadDocument(ctx, docId.Key(), &result)
	if err != nil {
		return nil, logger.Arango(ctx, err)
	}

	return &result, nil
}
func (s FileArango) ByUser(ctx context.Context, uid string) (*model.FileList, error) {
	query := `for edge in fileOwned
    filter edge._from == @user
    return document(edge._to)`
	vars := make(map[string]interface{})
	vars["user"] = uid

	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return nil, logger.Arango(ctx, err)
	}
	defer curs.Close()
	total := curs.Count()
	result := []model.File{}
	for {
		var doc model.File
		_, err = curs.ReadDocument(ctx, &doc)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return nil, logger.Arango(ctx, err)
		}
		result = append(result, doc)
	}
	return &model.FileList{
		Files: result,
		Total: total,
	}, nil
}
