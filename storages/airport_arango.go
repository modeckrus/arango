package storages

import (
	"arango/logger"
	"arango/model"
	"context"

	driver "github.com/arangodb/go-driver"
)

type AirportArango struct {
	C             driver.Client
	Db            driver.Database
	Coll          driver.Collection
	Owned         driver.Collection
	StorageHelper StorageHelper
}

func NewAirportArango(ctx context.Context, c driver.Client) (AirportArango, error) {
	result := AirportArango{}
	dbName := "backend"
	collName := "airports"
	ownedName := "airportOwned"
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
	result = AirportArango{
		C:     c,
		Db:    db,
		Coll:  coll,
		Owned: owned,
		StorageHelper: StorageHelper{
			CollName: collName,
		},
	}
	return result, nil
}

func (s AirportArango) Create(ctx context.Context, i model.Airport) (model.Airport, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Create")
	result := i
	meta, err := s.Coll.CreateDocument(ctx, i)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	u, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return result, logger.SomethingWrong(ctx)
	}
	edge := model.Edge{
		From: u.Id,
		To:   meta.ID.String(),
	}
	_, err = s.Owned.CreateDocument(ctx, edge)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	return result, nil
}

func (s AirportArango) Update(ctx context.Context, i model.Airport) (model.Airport, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Update")
	result := model.Airport{}

	_, err := s.Coll.UpdateDocument(ctx, i.Code, i)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	return s.Code(ctx, i.Code)

}

func (s AirportArango) Delete(ctx context.Context, code string) error {
	ctx = model.SignMethod(ctx, "AirportArango.Delete")
	_, err := s.Coll.RemoveDocument(ctx, code)
	if err != nil {
		return logger.Arango(ctx, err)
	}
	return nil
}

func (s AirportArango) Code(ctx context.Context, code string) (model.Airport, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Code")
	result := model.Airport{}
	_, err := s.Coll.ReadDocument(ctx, code, &result)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	return result, nil
}

func (s AirportArango) Search(ctx context.Context, i model.SearchI) (model.Airports, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Search")
	result := []model.Airport{}
	query := ""
	vars := make(map[string]interface{})
	if i.Text != nil {
		vars["text"] = *i.Text
		query = `for airport in Fulltext(airport, "name", CONCAT("prefix:", @text), @limit)
		limit @skip, @limit
		return airport`
	} else {
		query = `for airport in airports
		limit @skip, @limit
		return airport`
	}
	vars["limit"] = i.Limit
	vars["skip"] = i.Skip

	curs, err := s.Db.Query(ctx, query, vars)
	if err != nil {
		return result, logger.Arango(ctx, err)
	}
	defer curs.Close()
	for {
		var doc model.Airport
		_, err = curs.ReadDocument(ctx, &doc)
		if driver.IsNoMoreDocuments(err) {
			break
		} else if err != nil {
			return result, logger.Arango(ctx, err)
		}
		result = append(result, doc)
	}
	return result, nil
}

//Аэропорты которые принадлежат пользователю
func (s AirportArango) Own(ctx context.Context, uid string) (model.Airports, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Own")
	// result := []model.User{}
	return nil, logger.Unimplemented(ctx)
}

//Пользователь который владеет аэропортом
func (s AirportArango) User(ctx context.Context, code string) (model.User, error) {
	ctx = model.SignMethod(ctx, "AirportArango.User")
	result := model.User{}
	return result, logger.Unimplemented(ctx)
}

func (s AirportArango) Service(ctx context.Context, id string) (model.Airports, error) {
	ctx = model.SignMethod(ctx, "AirportArango.Service")
	return nil, logger.Unimplemented(ctx)
}
