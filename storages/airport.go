package storages

import (
	"arango/model"
	"context"
)

type AirportI interface {
	Create(ctx context.Context, airport model.Airport) (model.Airport, error)
	Update(ctx context.Context, airport model.Airport) (model.Airport, error)
	Delete(ctx context.Context, code string) error
	Code(ctx context.Context, code string) (model.Airport, error)
	Search(ctx context.Context, search model.SearchI) (model.Airports, error)
	//Аэропорты которые принадлежат пользователю
	Own(ctx context.Context, uid string) (model.Airports, error)
	//Пользователь который владеет аэропортом
	User(ctx context.Context, code string) (model.User, error)
	//Аэропорты по сервису
	Service(ctx context.Context, id string) (model.Airports, error)
}
