package model

import "arango/api"

type FileType int32

const (
	File_FileType  FileType = 0
	Image_FileType FileType = 1
)

type File struct {
	Id   string   `json:"_key"`
	Name string   `json:"name"`
	Type FileType `json:"type"`
}
type FileList struct {
	Files []File
	Total int64
}

func (i FileList) ToProto() *api.FileList {
	list := []*api.FileR{}
	for _, file := range i.Files {
		list = append(list, file.ToProto())
	}
	return &api.FileList{
		Items: list,
	}
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
