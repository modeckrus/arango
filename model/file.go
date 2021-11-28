package model

import "arango/api"

type FileType int32

const (
	File_FileType  FileType = 0
	Image_FileType FileType = 1
)

type File struct {
	Id   string   `json:"_id"`
	Name string   `json:"name"`
	Type FileType `json:"type"`
}
type CreateFile struct {
	Name string   `json:"name"`
	Type FileType `json:"type"`
}

func (i File) ToProto() *api.FileR {
	return &api.FileR{
		Id:   i.Id,
		Name: i.Name,
		Type: api.FileTypeE(i.Type),
	}
}
