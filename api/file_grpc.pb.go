// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package api

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// FileSClient is the client API for FileS service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type FileSClient interface {
	Create(ctx context.Context, in *AddFileI, opts ...grpc.CallOption) (*FileR, error)
	Id(ctx context.Context, in *GetByIdI, opts ...grpc.CallOption) (*FileR, error)
	User(ctx context.Context, in *GetByIdI, opts ...grpc.CallOption) (*FileList, error)
}

type fileSClient struct {
	cc grpc.ClientConnInterface
}

func NewFileSClient(cc grpc.ClientConnInterface) FileSClient {
	return &fileSClient{cc}
}

func (c *fileSClient) Create(ctx context.Context, in *AddFileI, opts ...grpc.CallOption) (*FileR, error) {
	out := new(FileR)
	err := c.cc.Invoke(ctx, "/api.FileS/Create", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *fileSClient) Id(ctx context.Context, in *GetByIdI, opts ...grpc.CallOption) (*FileR, error) {
	out := new(FileR)
	err := c.cc.Invoke(ctx, "/api.FileS/Id", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *fileSClient) User(ctx context.Context, in *GetByIdI, opts ...grpc.CallOption) (*FileList, error) {
	out := new(FileList)
	err := c.cc.Invoke(ctx, "/api.FileS/User", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// FileSServer is the server API for FileS service.
// All implementations must embed UnimplementedFileSServer
// for forward compatibility
type FileSServer interface {
	Create(context.Context, *AddFileI) (*FileR, error)
	Id(context.Context, *GetByIdI) (*FileR, error)
	User(context.Context, *GetByIdI) (*FileList, error)
	mustEmbedUnimplementedFileSServer()
}

// UnimplementedFileSServer must be embedded to have forward compatible implementations.
type UnimplementedFileSServer struct {
}

func (UnimplementedFileSServer) Create(context.Context, *AddFileI) (*FileR, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Create not implemented")
}
func (UnimplementedFileSServer) Id(context.Context, *GetByIdI) (*FileR, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Id not implemented")
}
func (UnimplementedFileSServer) User(context.Context, *GetByIdI) (*FileList, error) {
	return nil, status.Errorf(codes.Unimplemented, "method User not implemented")
}
func (UnimplementedFileSServer) mustEmbedUnimplementedFileSServer() {}

// UnsafeFileSServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to FileSServer will
// result in compilation errors.
type UnsafeFileSServer interface {
	mustEmbedUnimplementedFileSServer()
}

func RegisterFileSServer(s grpc.ServiceRegistrar, srv FileSServer) {
	s.RegisterService(&FileS_ServiceDesc, srv)
}

func _FileS_Create_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AddFileI)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(FileSServer).Create(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/api.FileS/Create",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(FileSServer).Create(ctx, req.(*AddFileI))
	}
	return interceptor(ctx, in, info, handler)
}

func _FileS_Id_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetByIdI)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(FileSServer).Id(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/api.FileS/Id",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(FileSServer).Id(ctx, req.(*GetByIdI))
	}
	return interceptor(ctx, in, info, handler)
}

func _FileS_User_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetByIdI)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(FileSServer).User(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/api.FileS/User",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(FileSServer).User(ctx, req.(*GetByIdI))
	}
	return interceptor(ctx, in, info, handler)
}

// FileS_ServiceDesc is the grpc.ServiceDesc for FileS service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var FileS_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "api.FileS",
	HandlerType: (*FileSServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Create",
			Handler:    _FileS_Create_Handler,
		},
		{
			MethodName: "Id",
			Handler:    _FileS_Id_Handler,
		},
		{
			MethodName: "User",
			Handler:    _FileS_User_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "file.proto",
}
