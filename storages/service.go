package storages

import (
	"arango/model"
	"context"
)

type ServiceI interface {
	Create(ctx context.Context, i model.ServiceCreate) (model.Service, error)
	Update(ctx context.Context, i model.Service) (model.Service, error)
	Delete(ctx context.Context, id string) error
	Id(ctx context.Context, id string) (model.Service, error)
	Search(ctx context.Context, i model.SearchI) (model.ServiceList, error)
	User(ctx context.Context, uid string) (model.ServiceList, error)
}
