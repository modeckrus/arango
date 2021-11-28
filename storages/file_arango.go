package storages

import (
	"arango/logger"
	"arango/model"
	"context"

	driver "github.com/arangodb/go-driver"
)

type FileArango struct {
	C    driver.Client
	Db   driver.Database
	Coll driver.Collection
}

func NewFileArango(ctx context.Context, c driver.Client) (FileArango, error) {
	result := FileArango{}
	dbName := "backend"
	collName := "files"
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
	result = FileArango{
		C:    c,
		Db:   db,
		Coll: coll,
	}
	return result, nil
}

func (s FileArango) Create(ctx context.Context, i model.CreateFile) (*model.File, error) {
	meta, err := s.Coll.CreateDocument(ctx, i)
	if err != nil {
		return nil, err
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
		return nil, err
	}

	return &result, nil
}
