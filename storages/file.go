package storages

import (
	"arango/model"
	"context"
)

type FileI interface {
	Create(ctx context.Context, i model.CreateFile) (*model.File, error)
	Id(ctx context.Context, id string) (*model.File, error)
	ByUser(ctx context.Context, uid string) (*model.FileList, error)
}
