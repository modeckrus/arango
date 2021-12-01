package logger

import (
	"arango/model"
	"context"
	"fmt"
	"time"

	"github.com/sirupsen/logrus"
)

func Unimplemented(ctx context.Context) error {
	u, l, m, err := model.GetValuesFromContext(ctx)
	if err != nil {
		return err
	}
	if l == "ru" {
		err = fmt.Errorf("%v_нереализовано", UnimplementedType)
	} else {
		err = fmt.Errorf("%v_unimplemented", UnimplementedType)
	}
	logrus.WithError(err).
		Errorf("Time(%t), Method(%v), Locale(%v), User(%v), Error(%v)",
			time.Now().String(), m, l, u, err)
	return err
}
