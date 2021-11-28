package service

import (
	"arango/api"
	"arango/logger"
	"arango/model"
	"arango/storages"
	"context"

	"google.golang.org/grpc"
)

type UserService struct {
	AuthService
	User storages.UserI
	api.UnimplementedUserSServer
}

func NewUserService(grpcServer *grpc.Server, auth AuthService, user storages.UserI) (*UserService, error) {
	service := UserService{
		AuthService: auth,
		User:        user,
	}
	api.RegisterUserSServer(grpcServer, service)
	return &service, nil
}

func (s UserService) Create(ctx context.Context, i *api.CreateUserI) (*api.UserR, error) {
	ctx = model.SignMethod(ctx, "UserService.Create")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	createUser := model.CreateUser{
		Name:     i.Name,
		Email:    i.Email,
		Level:    model.UserLevel(i.Level),
		Password: i.Password,
	}
	newUserPtr, err := s.User.Create(ctx, createUser)
	if err != nil {
		return nil, err
	}
	newUser := *newUserPtr
	return newUser.ToProto(), nil
}

func (s UserService) Update(ctx context.Context, i *api.UpdateUserI) (*api.UserR, error) {
	ctx = model.SignMethod(ctx, "UserService.Update")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	userPtr, err := s.User.Id(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	user := *userPtr
	err = s.ValidatePermissionForUserUpdate(ctx, user)
	if err != nil {
		return nil, err
	}
	var level *model.UserLevel
	if i.Level != nil {
		lvl := model.UserLevel(*i.Level)
		level = &lvl
	}
	newUser := model.UpdateUser{
		Id:       i.Id,
		Name:     i.Name,
		Email:    i.Email,
		Level:    level,
		Avatar:   i.AvatarId,
		Password: i.Password,
	}
	newUserPtr, err := s.User.Update(ctx, newUser)
	if err != nil {
		return nil, err
	}
	result := *newUserPtr
	return result.ToProto(), nil
}

func (s UserService) Delete(ctx context.Context, i *api.GetByIdI) (*api.StatusR, error) {
	ctx = model.SignMethod(ctx, "UserService.Delete")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	userPtr, err := s.User.Id(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	user := *userPtr
	u, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return nil, logger.SomethingWrong(ctx)
	}
	if !u.CheckPermission(user) {
		return nil, logger.PermissionDenied(ctx)
	}
	err = s.User.Delete(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	return &api.StatusR{Ok: true}, nil
}

func (s UserService) Id(ctx context.Context, i *api.GetByIdI) (*api.UserR, error) {
	ctx = model.SignMethod(ctx, "UserService.Id")
	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	userPtr, err := s.User.Id(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	user := *userPtr
	return user.ToProto(), nil
}

func (s UserService) Search(ctx context.Context, i *api.SearchI) (*api.UserListR, error) {
	ctx = model.SignMethod(ctx, "UserService.Search")

	ctx, err := s.Auth(ctx, i.Auth, 1)
	if err != nil {
		return nil, err
	}
	search := model.SearchI{
		Text:  i.Text,
		Skip:  i.Skip,
		Limit: i.Limit,
	}
	listPtr, err := s.User.Search(ctx, search)
	if err != nil {
		return nil, err
	}
	list := *listPtr
	return list.ToProto(), nil
}
func (s UserService) AuthByEmail(ctx context.Context, i *api.AuthByEmailI) (*api.AuthI, error) {
	ctx = model.SignMethod(ctx, "UserService.AuthByEmail")
	ctx = context.WithValue(ctx, model.LocaleContext{}, i.Locale)
	userPtr, err := s.User.GetByEmail(ctx, i.Email)
	if err != nil {
		return nil, err
	}
	user := *userPtr
	ctx = context.WithValue(ctx, model.UserContext{}, user)
	if !user.ComparePassword(i.Password) {
		return nil, logger.InvalidPassword(ctx, i.Password)
	}
	return s.AuthService.UserToAuth(ctx, user, i.Locale), nil
}

func (s UserService) Me(ctx context.Context, i *api.AuthI) (*api.UserR, error) {
	ctx = model.SignMethod(ctx, "UserService.Search")

	ctx, err := s.Auth(ctx, i, 1)
	if err != nil {
		return nil, err
	}
	user, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return nil, logger.SomethingWrong(ctx)
	}
	return user.ToProto(), nil
}
