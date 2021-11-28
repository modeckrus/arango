package logger

import (
	"context"
	"time"

	"github.com/sirupsen/logrus"
)

func Arango(ctx context.Context, err error) error {
	logrus.WithError(err).
		Errorf("Time(%t), Error(%v)",
			time.Now().String(), err)
	return err
}
