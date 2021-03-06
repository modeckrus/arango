package model

import (
	"arango/api"

	"github.com/arangodb/go-driver"
)

var Root User = User{
	Id:       "666",
	Name:     "root",
	Email:    "root@root.com",
	Level:    UserLevel_Admin,
	Password: "123",
}
var System User = User{
	Id:    "667",
	Name:  "system",
	Email: "system@root.com",
	Level: UserLevel_Admin,
}

type User struct {
	Id       string    `json:"_key"`
	Name     string    `json:"name"`
	Email    string    `json:"email"`
	Level    UserLevel `json:"level"`
	Avatar   *File     `json:"avatar"`
	Password string    `json:"password"`
}

func (i User) ComparePassword(password string) bool {
	return i.Password == password
}

type UpsertUser struct {
	Key      string    `json:"_key"`
	Name     string    `json:"name"`
	Email    string    `json:"email"`
	Level    UserLevel `json:"level"`
	Password *string   `json:"password"`
}

func (i User) ToUpsert() UpsertUser {
	docId := driver.DocumentID(i.Id)
	key := docId.Key()
	return UpsertUser{
		Key:      key,
		Name:     i.Name,
		Email:    i.Email,
		Level:    i.Level,
		Password: &i.Password,
	}
}

type CreateUser struct {
	Name     string    `json:"name"`
	Email    string    `json:"email"`
	Level    UserLevel `json:"level"`
	Avatar   *string   `json:"avatar"`
	Password string    `json:"password"`
}

func (i User) CheckPermission(o User) bool {
	if i.Id == o.Id {
		return true
	}
	if i.Level > o.Level {
		if i.Level >= UserLevel_Moderator {
			return true
		}
	}
	return false
}

type UpdateUser struct {
	Id       string     `json:"_key"`
	Name     *string    `json:"name"`
	Email    *string    `json:"email"`
	Level    *UserLevel `json:"level"`
	Avatar   *string    `json:"avatar"`
	Password *string    `json:"password"`
}

func (i User) ToProto() *api.UserR {
	var avatar *api.FileR
	if i.Avatar != nil {
		avatar = i.Avatar.ToProto()
	}
	resp := api.UserR{
		Id:     i.Id,
		Name:   i.Name,
		Email:  i.Email,
		Level:  api.UserLevelE(i.Level),
		Avatar: avatar,
	}
	return &resp
}

type UserItem struct {
	Id    string    `json:"_key"`
	Name  string    `json:"name" bson:"name"`
	Level UserLevel `json:"level"`
}
type UserList struct {
	List  []UserWithFile `json:"list"`
	Total int64          `json:"total"`
}

func (i UserList) ToProto() *api.UserListR {
	list := []*api.UserItemR{}
	for _, item := range i.List {
		list = append(list, item.ToProto())
	}
	return &api.UserListR{
		Total: i.Total,
		Items: list,
	}
}

type UserLevel int32

const (
	UserLevel_Unauth    UserLevel = 0
	UserLevel_Auth      UserLevel = 1
	UserLevel_Moderator UserLevel = 2
	UserLevel_Admin     UserLevel = 3
)

type UserWithFile struct {
	User
	Files []File `json:"files"`
}

func (i UserWithFile) ToProto() *api.UserItemR {
	var avatar *api.FileR
	if i.Avatar != nil {
		avatar = i.Avatar.ToProto()
	}
	var files []*api.FileR
	for _, file := range i.Files {
		files = append(files, file.ToProto())
	}
	return &api.UserItemR{
		Id:     i.Id,
		Name:   i.Name,
		Email:  i.Email,
		Avatar: avatar,
		Files:  files,
		Level:  api.UserLevelE(i.Level),
	}
}
