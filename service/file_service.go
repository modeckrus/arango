package service

import (
	"arango/api"
	"arango/model"
	"arango/storages"
	"context"

	"google.golang.org/grpc"
)

type FileService struct {
	AuthService
	File storages.FileI
	api.UnimplementedFileSServer
}

func NewFileService(grpcServer *grpc.Server, auth AuthService, file storages.FileI) (*FileService, error) {
	service := FileService{
		AuthService: auth,
		File:        file,
	}
	api.RegisterFileSServer(grpcServer, service)
	return &service, nil
}
func (s FileService) Create(ctx context.Context, i *api.AddFileI) (*api.FileR, error) {
	ctx = model.SignMethod(ctx, "FileService.Create")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	create := model.CreateFile{
		Name: i.Name,
		Type: model.FileType(i.Type),
	}
	filePtr, err := s.File.Create(ctx, create)
	if err != nil {
		return nil, err
	}
	file := *filePtr
	return file.ToProto(), nil
}

func (s FileService) Id(ctx context.Context, i *api.GetByIdI) (*api.FileR, error) {
	ctx = model.SignMethod(ctx, "FileService.Id")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	filePtr, err := s.File.Id(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	file := *filePtr
	return file.ToProto(), nil
}
func (s FileService) User(ctx context.Context, i *api.GetByIdI) (*api.FileList, error) {
	ctx = model.SignMethod(ctx, "FileService.User")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	files, err := s.File.ByUser(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	return files.ToProto(), nil
}
