package logger

import "fmt"

func Unauth(l string) error {
	var err error
	if l == "ru" {
		err = fmt.Errorf("%v_неавторизованно", UnauthErrorType)
	} else {
		err = fmt.Errorf("%v_unautorized", UnauthErrorType)
	}
	return err
}
