package model

import (
	"context"
	"fmt"
)

type UserContext struct{}
type LocaleContext struct{}
type MethodContext struct{}

func GetValuesFromContext(ctx context.Context) (u User, l string, m []string, err error) {
	super := false
	u, ok := ctx.Value(UserContext{}).(User)
	if ok {
		l, ok = ctx.Value(LocaleContext{}).(string)
		if ok {
			m, ok = ctx.Value(MethodContext{}).([]string)
			if ok {
				super = true
			}
		}
	}
	if !super {
		err = fmt.Errorf("error while decode context")
	}
	return
}

func SignMethod(ctx context.Context, method string) context.Context {
	methdos, ok := ctx.Value(MethodContext{}).([]string)
	if !ok {
		methdos = []string{}
	}
	methdos = append(methdos, method)
	ctx = context.WithValue(ctx, MethodContext{}, methdos)
	return ctx
}
