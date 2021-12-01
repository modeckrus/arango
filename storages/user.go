package storages

import (
	"arango/model"
	"context"
)

type UserI interface {
	Create(ctx context.Context, i model.CreateUser) (model.User, error)
	Update(ctx context.Context, i model.UpdateUser) (model.User, error)
	Delete(ctx context.Context, id string) error
	Id(ctx context.Context, id string) (model.User, error)
	Search(ctx context.Context, i model.SearchI) (model.UserList, error)
	GetByEmail(ctx context.Context, email string) (model.User, error)
}
