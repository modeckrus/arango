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
	user, err := s.User.Id(ctx, i.Token)
	l := i.Locale
	l = strings.ToLower(l)
	if err != nil {
		return ctx, logger.Unauth(l)
	}
	ctx = context.WithValue(ctx, model.UserContext{}, user)
	ctx = context.WithValue(ctx, model.LocaleContext{}, i.Locale)
	if user.Level < level {
		return ctx, logger.PermissionDenied(ctx)
	}
	return ctx, nil

}
func (s AuthService) ValidatePermission(ctx context.Context, level model.UserLevel, uid *string) error {
	user, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return logger.SomethingWrong(ctx)
	}
	if uid != nil {
		if user.Id == *uid {
			return nil
		}
	}
	if user.Level < level {
		return logger.PermissionDenied(ctx)
	}
	return nil
}
func (s AuthService) ValidatePermissionForUserUpdate(ctx context.Context, u model.User) error {
	user, ok := ctx.Value(model.UserContext{}).(model.User)
	if !ok {
		return logger.SomethingWrong(ctx)
	}
	if user.Id == u.Id {
		return nil
	}
	if user.Level < model.UserLevel_Moderator {
		return logger.PermissionDenied(ctx)
	}
	if user.Level < u.Level {
		return logger.PermissionDenied(ctx)
	}
	return nil
}
func (s AuthService) UserToAuth(ctx context.Context, user model.User, locale string) *api.AuthI {
	return &api.AuthI{
		Token:  user.Id,
		Locale: locale,
	}
}
