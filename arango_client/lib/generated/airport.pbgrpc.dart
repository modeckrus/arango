///
//  Generated code. Do not modify.
//  source: airport.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'airport.pb.dart' as $0;
import 'common.pb.dart' as $1;
export 'airport.pb.dart';

class AirportSClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.AirportI, $0.AirportMR>(
      '/api.AirportS/Create',
      ($0.AirportI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportMR.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.AirportI, $0.AirportMR>(
      '/api.AirportS/Update',
      ($0.AirportI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportMR.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.GetByCodeI, $1.StatusR>(
      '/api.AirportS/Delete',
      ($1.GetByCodeI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatusR.fromBuffer(value));
  static final _$codeM = $grpc.ClientMethod<$1.GetByCodeI, $0.AirportMR>(
      '/api.AirportS/CodeM',
      ($1.GetByCodeI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportMR.fromBuffer(value));
  static final _$codeU = $grpc.ClientMethod<$1.GetByCodeI, $0.AirportUR>(
      '/api.AirportS/CodeU',
      ($1.GetByCodeI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportUR.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$1.SearchI, $0.AirportListR>(
      '/api.AirportS/Search',
      ($1.SearchI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportListR.fromBuffer(value));
  static final _$service = $grpc.ClientMethod<$1.GetByIdI, $0.AirportListR>(
      '/api.AirportS/Service',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AirportListR.fromBuffer(value));

  AirportSClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AirportMR> create($0.AirportI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.AirportMR> update($0.AirportI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatusR> delete($1.GetByCodeI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.AirportMR> codeM($1.GetByCodeI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codeM, request, options: options);
  }

  $grpc.ResponseFuture<$0.AirportUR> codeU($1.GetByCodeI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codeU, request, options: options);
  }

  $grpc.ResponseFuture<$0.AirportListR> search($1.SearchI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$0.AirportListR> service($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$service, request, options: options);
  }
}

abstract class AirportSServiceBase extends $grpc.Service {
  $core.String get $name => 'api.AirportS';

  AirportSServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AirportI, $0.AirportMR>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AirportI.fromBuffer(value),
        ($0.AirportMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AirportI, $0.AirportMR>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AirportI.fromBuffer(value),
        ($0.AirportMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByCodeI, $1.StatusR>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByCodeI.fromBuffer(value),
        ($1.StatusR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByCodeI, $0.AirportMR>(
        'CodeM',
        codeM_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByCodeI.fromBuffer(value),
        ($0.AirportMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByCodeI, $0.AirportUR>(
        'CodeU',
        codeU_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByCodeI.fromBuffer(value),
        ($0.AirportUR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchI, $0.AirportListR>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchI.fromBuffer(value),
        ($0.AirportListR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $0.AirportListR>(
        'Service',
        service_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($0.AirportListR value) => value.writeToBuffer()));
  }

  $async.Future<$0.AirportMR> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AirportI> request) async {
    return create(call, await request);
  }

  $async.Future<$0.AirportMR> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AirportI> request) async {
    return update(call, await request);
  }

  $async.Future<$1.StatusR> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByCodeI> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.AirportMR> codeM_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByCodeI> request) async {
    return codeM(call, await request);
  }

  $async.Future<$0.AirportUR> codeU_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByCodeI> request) async {
    return codeU(call, await request);
  }

  $async.Future<$0.AirportListR> search_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchI> request) async {
    return search(call, await request);
  }

  $async.Future<$0.AirportListR> service_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return service(call, await request);
  }

  $async.Future<$0.AirportMR> create(
      $grpc.ServiceCall call, $0.AirportI request);
  $async.Future<$0.AirportMR> update(
      $grpc.ServiceCall call, $0.AirportI request);
  $async.Future<$1.StatusR> delete(
      $grpc.ServiceCall call, $1.GetByCodeI request);
  $async.Future<$0.AirportMR> codeM(
      $grpc.ServiceCall call, $1.GetByCodeI request);
  $async.Future<$0.AirportUR> codeU(
      $grpc.ServiceCall call, $1.GetByCodeI request);
  $async.Future<$0.AirportListR> search(
      $grpc.ServiceCall call, $1.SearchI request);
  $async.Future<$0.AirportListR> service(
      $grpc.ServiceCall call, $1.GetByIdI request);
}
