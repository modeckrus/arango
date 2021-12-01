// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.27.1
// 	protoc        v3.17.3
// source: file.proto

package api

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type FileTypeE int32

const (
	FileTypeE_file  FileTypeE = 0
	FileTypeE_image FileTypeE = 1
)

// Enum value maps for FileTypeE.
var (
	FileTypeE_name = map[int32]string{
		0: "file",
		1: "image",
	}
	FileTypeE_value = map[string]int32{
		"file":  0,
		"image": 1,
	}
)

func (x FileTypeE) Enum() *FileTypeE {
	p := new(FileTypeE)
	*p = x
	return p
}

func (x FileTypeE) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (FileTypeE) Descriptor() protoreflect.EnumDescriptor {
	return file_file_proto_enumTypes[0].Descriptor()
}

func (FileTypeE) Type() protoreflect.EnumType {
	return &file_file_proto_enumTypes[0]
}

func (x FileTypeE) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use FileTypeE.Descriptor instead.
func (FileTypeE) EnumDescriptor() ([]byte, []int) {
	return file_file_proto_rawDescGZIP(), []int{0}
}

type FileR struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id   string    `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name string    `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Type FileTypeE `protobuf:"varint,3,opt,name=type,proto3,enum=api.FileTypeE" json:"type,omitempty"`
}

func (x *FileR) Reset() {
	*x = FileR{}
	if protoimpl.UnsafeEnabled {
		mi := &file_file_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *FileR) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*FileR) ProtoMessage() {}

func (x *FileR) ProtoReflect() protoreflect.Message {
	mi := &file_file_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use FileR.ProtoReflect.Descriptor instead.
func (*FileR) Descriptor() ([]byte, []int) {
	return file_file_proto_rawDescGZIP(), []int{0}
}

func (x *FileR) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *FileR) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *FileR) GetType() FileTypeE {
	if x != nil {
		return x.Type
	}
	return FileTypeE_file
}

type AddFileI struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Auth *AuthI    `protobuf:"bytes,1,opt,name=auth,proto3" json:"auth,omitempty"`
	Name string    `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	Type FileTypeE `protobuf:"varint,3,opt,name=type,proto3,enum=api.FileTypeE" json:"type,omitempty"`
}

func (x *AddFileI) Reset() {
	*x = AddFileI{}
	if protoimpl.UnsafeEnabled {
		mi := &file_file_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AddFileI) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AddFileI) ProtoMessage() {}

func (x *AddFileI) ProtoReflect() protoreflect.Message {
	mi := &file_file_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AddFileI.ProtoReflect.Descriptor instead.
func (*AddFileI) Descriptor() ([]byte, []int) {
	return file_file_proto_rawDescGZIP(), []int{1}
}

func (x *AddFileI) GetAuth() *AuthI {
	if x != nil {
		return x.Auth
	}
	return nil
}

func (x *AddFileI) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *AddFileI) GetType() FileTypeE {
	if x != nil {
		return x.Type
	}
	return FileTypeE_file
}

type FileList struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Items []*FileR `protobuf:"bytes,1,rep,name=items,proto3" json:"items,omitempty"`
}

func (x *FileList) Reset() {
	*x = FileList{}
	if protoimpl.UnsafeEnabled {
		mi := &file_file_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *FileList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*FileList) ProtoMessage() {}

func (x *FileList) ProtoReflect() protoreflect.Message {
	mi := &file_file_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use FileList.ProtoReflect.Descriptor instead.
func (*FileList) Descriptor() ([]byte, []int) {
	return file_file_proto_rawDescGZIP(), []int{2}
}

func (x *FileList) GetItems() []*FileR {
	if x != nil {
		return x.Items
	}
	return nil
}

var File_file_proto protoreflect.FileDescriptor

var file_file_proto_rawDesc = []byte{
	0x0a, 0x0a, 0x66, 0x69, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x03, 0x61, 0x70,
	0x69, 0x1a, 0x0c, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22,
	0x4f, 0x0a, 0x05, 0x46, 0x69, 0x6c, 0x65, 0x52, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x22, 0x0a, 0x04,
	0x74, 0x79, 0x70, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x0e, 0x2e, 0x61, 0x70, 0x69,
	0x2e, 0x46, 0x69, 0x6c, 0x65, 0x54, 0x79, 0x70, 0x65, 0x45, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65,
	0x22, 0x62, 0x0a, 0x08, 0x41, 0x64, 0x64, 0x46, 0x69, 0x6c, 0x65, 0x49, 0x12, 0x1e, 0x0a, 0x04,
	0x61, 0x75, 0x74, 0x68, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0a, 0x2e, 0x61, 0x70, 0x69,
	0x2e, 0x41, 0x75, 0x74, 0x68, 0x49, 0x52, 0x04, 0x61, 0x75, 0x74, 0x68, 0x12, 0x12, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65,
	0x12, 0x22, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x0e,
	0x2e, 0x61, 0x70, 0x69, 0x2e, 0x46, 0x69, 0x6c, 0x65, 0x54, 0x79, 0x70, 0x65, 0x45, 0x52, 0x04,
	0x74, 0x79, 0x70, 0x65, 0x22, 0x2c, 0x0a, 0x08, 0x46, 0x69, 0x6c, 0x65, 0x4c, 0x69, 0x73, 0x74,
	0x12, 0x20, 0x0a, 0x05, 0x69, 0x74, 0x65, 0x6d, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x0a, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x46, 0x69, 0x6c, 0x65, 0x52, 0x52, 0x05, 0x69, 0x74, 0x65,
	0x6d, 0x73, 0x2a, 0x20, 0x0a, 0x09, 0x46, 0x69, 0x6c, 0x65, 0x54, 0x79, 0x70, 0x65, 0x45, 0x12,
	0x08, 0x0a, 0x04, 0x66, 0x69, 0x6c, 0x65, 0x10, 0x00, 0x12, 0x09, 0x0a, 0x05, 0x69, 0x6d, 0x61,
	0x67, 0x65, 0x10, 0x01, 0x32, 0x79, 0x0a, 0x05, 0x46, 0x69, 0x6c, 0x65, 0x53, 0x12, 0x25, 0x0a,
	0x06, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x12, 0x0d, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x41, 0x64,
	0x64, 0x46, 0x69, 0x6c, 0x65, 0x49, 0x1a, 0x0a, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x46, 0x69, 0x6c,
	0x65, 0x52, 0x22, 0x00, 0x12, 0x21, 0x0a, 0x02, 0x49, 0x64, 0x12, 0x0d, 0x2e, 0x61, 0x70, 0x69,
	0x2e, 0x47, 0x65, 0x74, 0x42, 0x79, 0x49, 0x64, 0x49, 0x1a, 0x0a, 0x2e, 0x61, 0x70, 0x69, 0x2e,
	0x46, 0x69, 0x6c, 0x65, 0x52, 0x22, 0x00, 0x12, 0x26, 0x0a, 0x04, 0x55, 0x73, 0x65, 0x72, 0x12,
	0x0d, 0x2e, 0x61, 0x70, 0x69, 0x2e, 0x47, 0x65, 0x74, 0x42, 0x79, 0x49, 0x64, 0x49, 0x1a, 0x0d,
	0x2e, 0x61, 0x70, 0x69, 0x2e, 0x46, 0x69, 0x6c, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x22, 0x00, 0x42,
	0x0a, 0x5a, 0x08, 0x2e, 0x2f, 0x2e, 0x2e, 0x2f, 0x61, 0x70, 0x69, 0x62, 0x06, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x33,
}

var (
	file_file_proto_rawDescOnce sync.Once
	file_file_proto_rawDescData = file_file_proto_rawDesc
)

func file_file_proto_rawDescGZIP() []byte {
	file_file_proto_rawDescOnce.Do(func() {
		file_file_proto_rawDescData = protoimpl.X.CompressGZIP(file_file_proto_rawDescData)
	})
	return file_file_proto_rawDescData
}

var file_file_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_file_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_file_proto_goTypes = []interface{}{
	(FileTypeE)(0),   // 0: api.FileTypeE
	(*FileR)(nil),    // 1: api.FileR
	(*AddFileI)(nil), // 2: api.AddFileI
	(*FileList)(nil), // 3: api.FileList
	(*AuthI)(nil),    // 4: api.AuthI
	(*GetByIdI)(nil), // 5: api.GetByIdI
}
var file_file_proto_depIdxs = []int32{
	0, // 0: api.FileR.type:type_name -> api.FileTypeE
	4, // 1: api.AddFileI.auth:type_name -> api.AuthI
	0, // 2: api.AddFileI.type:type_name -> api.FileTypeE
	1, // 3: api.FileList.items:type_name -> api.FileR
	2, // 4: api.FileS.Create:input_type -> api.AddFileI
	5, // 5: api.FileS.Id:input_type -> api.GetByIdI
	5, // 6: api.FileS.User:input_type -> api.GetByIdI
	1, // 7: api.FileS.Create:output_type -> api.FileR
	1, // 8: api.FileS.Id:output_type -> api.FileR
	3, // 9: api.FileS.User:output_type -> api.FileList
	7, // [7:10] is the sub-list for method output_type
	4, // [4:7] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_file_proto_init() }
func file_file_proto_init() {
	if File_file_proto != nil {
		return
	}
	file_common_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_file_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*FileR); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_file_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AddFileI); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_file_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*FileList); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_file_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_file_proto_goTypes,
		DependencyIndexes: file_file_proto_depIdxs,
		EnumInfos:         file_file_proto_enumTypes,
		MessageInfos:      file_file_proto_msgTypes,
	}.Build()
	File_file_proto = out.File
	file_file_proto_rawDesc = nil
	file_file_proto_goTypes = nil
	file_file_proto_depIdxs = nil
}
