///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tag.pb.dart' as $3;
import 'common.pb.dart' as $1;
export 'tag.pb.dart';

class TagSClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$3.TagCreateI, $3.TagR>(
      '/api.TagS/Create',
      ($3.TagCreateI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagR.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$3.TagUpdateI, $3.TagR>(
      '/api.TagS/Update',
      ($3.TagUpdateI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagR.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.GetByIdI, $3.TagR>(
      '/api.TagS/Delete',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagR.fromBuffer(value));
  static final _$id = $grpc.ClientMethod<$1.GetByIdI, $3.TagR>(
      '/api.TagS/Id',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagR.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$1.SearchI, $3.TagListR>(
      '/api.TagS/Search',
      ($1.SearchI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagListR.fromBuffer(value));
  static final _$service = $grpc.ClientMethod<$1.GetByIdI, $3.TagListR>(
      '/api.TagS/Service',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TagListR.fromBuffer(value));

  TagSClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.TagR> create($3.TagCreateI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$3.TagR> update($3.TagUpdateI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$3.TagR> delete($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$3.TagR> id($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$id, request, options: options);
  }

  $grpc.ResponseFuture<$3.TagListR> search($1.SearchI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$3.TagListR> service($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$service, request, options: options);
  }
}

abstract class TagSServiceBase extends $grpc.Service {
  $core.String get $name => 'api.TagS';

  TagSServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.TagCreateI, $3.TagR>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TagCreateI.fromBuffer(value),
        ($3.TagR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TagUpdateI, $3.TagR>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TagUpdateI.fromBuffer(value),
        ($3.TagR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $3.TagR>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($3.TagR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $3.TagR>(
        'Id',
        id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($3.TagR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchI, $3.TagListR>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchI.fromBuffer(value),
        ($3.TagListR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $3.TagListR>(
        'Service',
        service_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($3.TagListR value) => value.writeToBuffer()));
  }

  $async.Future<$3.TagR> create_Pre(
      $grpc.ServiceCall call, $async.Future<$3.TagCreateI> request) async {
    return create(call, await request);
  }

  $async.Future<$3.TagR> update_Pre(
      $grpc.ServiceCall call, $async.Future<$3.TagUpdateI> request) async {
    return update(call, await request);
  }

  $async.Future<$3.TagR> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.TagR> id_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return id(call, await request);
  }

  $async.Future<$3.TagListR> search_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchI> request) async {
    return search(call, await request);
  }

  $async.Future<$3.TagListR> service_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return service(call, await request);
  }

  $async.Future<$3.TagR> create($grpc.ServiceCall call, $3.TagCreateI request);
  $async.Future<$3.TagR> update($grpc.ServiceCall call, $3.TagUpdateI request);
  $async.Future<$3.TagR> delete($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$3.TagR> id($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$3.TagListR> search($grpc.ServiceCall call, $1.SearchI request);
  $async.Future<$3.TagListR> service(
      $grpc.ServiceCall call, $1.GetByIdI request);
}
