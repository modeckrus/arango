package logger

import (
	"arango/model"
	"context"
	"fmt"
	"time"

	"github.com/sirupsen/logrus"
)

func InvalidPassword(ctx context.Context, password string) error {
	_, l, m, err := model.GetValuesFromContext(ctx)
	if err != nil {
		return err
	}
	if l == "ru" {
		err = fmt.Errorf("%v_неверный пароль", InvalidPasswordType)
	} else {
		err = fmt.Errorf("%v_invalid password", InvalidPasswordType)
	}
	logrus.WithError(err).
		Errorf("Time(%t), Method(%v), Locale(%v), Error(%v)",
			time.Now().String(), m, l, err)
	return err
}
