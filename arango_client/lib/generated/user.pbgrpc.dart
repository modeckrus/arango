///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $2;
import 'common.pb.dart' as $1;
export 'user.pb.dart';

class UserSClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$2.CreateUserI, $2.UserR>(
      '/api.UserS/Create',
      ($2.CreateUserI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserR.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$2.UpdateUserI, $2.UserR>(
      '/api.UserS/Update',
      ($2.UpdateUserI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserR.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.GetByIdI, $1.StatusR>(
      '/api.UserS/Delete',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatusR.fromBuffer(value));
  static final _$id = $grpc.ClientMethod<$1.GetByIdI, $2.UserR>(
      '/api.UserS/Id',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserR.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$1.SearchI, $2.UserListR>(
      '/api.UserS/Search',
      ($1.SearchI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserListR.fromBuffer(value));
  static final _$authByEmail = $grpc.ClientMethod<$2.AuthByEmailI, $1.AuthI>(
      '/api.UserS/AuthByEmail',
      ($2.AuthByEmailI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AuthI.fromBuffer(value));
  static final _$me = $grpc.ClientMethod<$1.AuthI, $2.UserR>(
      '/api.UserS/Me',
      ($1.AuthI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserR.fromBuffer(value));

  UserSClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.UserR> create($2.CreateUserI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserR> update($2.UpdateUserI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatusR> delete($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserR> id($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$id, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserListR> search($1.SearchI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthI> authByEmail($2.AuthByEmailI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authByEmail, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserR> me($1.AuthI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$me, request, options: options);
  }
}

abstract class UserSServiceBase extends $grpc.Service {
  $core.String get $name => 'api.UserS';

  UserSServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateUserI, $2.UserR>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateUserI.fromBuffer(value),
        ($2.UserR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateUserI, $2.UserR>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateUserI.fromBuffer(value),
        ($2.UserR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $1.StatusR>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($1.StatusR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $2.UserR>(
        'Id',
        id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($2.UserR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchI, $2.UserListR>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchI.fromBuffer(value),
        ($2.UserListR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AuthByEmailI, $1.AuthI>(
        'AuthByEmail',
        authByEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AuthByEmailI.fromBuffer(value),
        ($1.AuthI value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthI, $2.UserR>(
        'Me',
        me_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AuthI.fromBuffer(value),
        ($2.UserR value) => value.writeToBuffer()));
  }

  $async.Future<$2.UserR> create_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateUserI> request) async {
    return create(call, await request);
  }

  $async.Future<$2.UserR> update_Pre(
      $grpc.ServiceCall call, $async.Future<$2.UpdateUserI> request) async {
    return update(call, await request);
  }

  $async.Future<$1.StatusR> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.UserR> id_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return id(call, await request);
  }

  $async.Future<$2.UserListR> search_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchI> request) async {
    return search(call, await request);
  }

  $async.Future<$1.AuthI> authByEmail_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AuthByEmailI> request) async {
    return authByEmail(call, await request);
  }

  $async.Future<$2.UserR> me_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AuthI> request) async {
    return me(call, await request);
  }

  $async.Future<$2.UserR> create(
      $grpc.ServiceCall call, $2.CreateUserI request);
  $async.Future<$2.UserR> update(
      $grpc.ServiceCall call, $2.UpdateUserI request);
  $async.Future<$1.StatusR> delete($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$2.UserR> id($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$2.UserListR> search(
      $grpc.ServiceCall call, $1.SearchI request);
  $async.Future<$1.AuthI> authByEmail(
      $grpc.ServiceCall call, $2.AuthByEmailI request);
  $async.Future<$2.UserR> me($grpc.ServiceCall call, $1.AuthI request);
}
