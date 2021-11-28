package service

import (
	"arango/api"
	"arango/logger"
	"arango/model"
	"arango/storages"
	"context"
	"strings"
)

type AuthService struct {
	User storages.UserI
}

func NewAuthService(user storages.UserI) AuthService {
	return AuthService{
		User: user,
	}
}

func (s AuthService) Auth(ctx context.Context, i *api.AuthI, level model.UserLevel) (context.Context, error) {
	userPtr, err := s.User.Id(ctx, i.Token)
	l := i.Locale
	l = strings.ToLower(l)
	if err != nil {
		return ctx, logger.Unauth(l)
	}
	user := *userPtr
	ctx = context.WithValue(ctx, model.UserContext{}, user)
	ctx = context.WithValue(ctx, model.LocaleContext{}, i.Locale)
	if user.Level < level {
		return ctx, logger.PermissionDenied(ctx)
	}
	return ctx, nil

}
func (s AuthService) UserToAuth(ctx context.Context, user model.User, locale string) *api.AuthI {
	return &api.AuthI{
		Token:  user.Id,
		Locale: locale,
	}
}
