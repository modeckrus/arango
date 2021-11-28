package logger

import (
	"arango/model"
	"context"
	"fmt"
	"time"

	"github.com/sirupsen/logrus"
)

func InvalidId(ctx context.Context, id string) error {
	u, l, m, err := model.GetValuesFromContext(ctx)
	if err != nil {
		return err
	}
	if l == "ru" {
		err = fmt.Errorf("%v_неверный id(%v)", InvalidIdType, id)
	} else {
		err = fmt.Errorf("%v_invalid id(%v)", InvalidIdType, id)
	}
	logrus.WithError(err).
		Errorf("Time(%t), Method(%v), Locale(%v), User(%v), Error(%v)",
			time.Now().String(), m, l, u, err)
	return err
}
