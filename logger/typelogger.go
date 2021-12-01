package logger

type ErrorType int32

const (
	UnauthErrorType      ErrorType = 0
	PermissionDeniedType ErrorType = 1
	InvalidIdType        ErrorType = 2
	NotFoundType         ErrorType = 3
	InvalidPasswordType  ErrorType = 4
	UnimplementedType    ErrorType = 5
)
