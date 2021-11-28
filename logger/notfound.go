package logger

import (
	"arango/model"
	"context"
	"fmt"
	"time"

	"github.com/sirupsen/logrus"
)

func NotFound(ctx context.Context, object string) error {
	u, l, m, err := model.GetValuesFromContext(ctx)
	if err != nil {
		return err
	}
	if l == "ru" {
		err = fmt.Errorf("%v_не найдено", NotFoundType)
	} else {
		err = fmt.Errorf("%v_not found", NotFoundType)
	}
	logrus.WithError(err).
		Errorf("Time(%t), Method(%v), Locale(%v), User(%v), Error(%v)",
			time.Now(), m, l, u, err)
	return err
}
