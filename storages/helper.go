package storages

import "github.com/arangodb/go-driver"

type StorageHelper struct {
	CollName string
}

func (s StorageHelper) GetId(id string) driver.DocumentID {
	return driver.NewDocumentID(s.CollName, id)
}
