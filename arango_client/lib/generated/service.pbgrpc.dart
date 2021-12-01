///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $4;
import 'common.pb.dart' as $1;
export 'service.pb.dart';

class ServiceSClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$4.ServiceCreateI, $4.ServiceMR>(
      '/api.ServiceS/Create',
      ($4.ServiceCreateI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceMR.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$4.ServiceUpdateI, $4.ServiceMR>(
      '/api.ServiceS/Update',
      ($4.ServiceUpdateI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceMR.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$1.GetByIdI, $1.StatusR>(
      '/api.ServiceS/Delete',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatusR.fromBuffer(value));
  static final _$idM = $grpc.ClientMethod<$1.GetByIdI, $4.ServiceMR>(
      '/api.ServiceS/IdM',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceMR.fromBuffer(value));
  static final _$idU = $grpc.ClientMethod<$1.GetByIdI, $4.ServiceUR>(
      '/api.ServiceS/IdU',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceUR.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$1.SearchI, $4.ServiceListR>(
      '/api.ServiceS/Search',
      ($1.SearchI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceListR.fromBuffer(value));
  static final _$airport = $grpc.ClientMethod<$1.GetByCodeI, $4.ServiceListR>(
      '/api.ServiceS/Airport',
      ($1.GetByCodeI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServiceListR.fromBuffer(value));
  static final _$searchAirport =
      $grpc.ClientMethod<$1.SearchWithCodeI, $4.ServiceListR>(
          '/api.ServiceS/SearchAirport',
          ($1.SearchWithCodeI value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $4.ServiceListR.fromBuffer(value));

  ServiceSClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.ServiceMR> create($4.ServiceCreateI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceMR> update($4.ServiceUpdateI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatusR> delete($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceMR> idM($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$idM, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceUR> idU($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$idU, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceListR> search($1.SearchI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceListR> airport($1.GetByCodeI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$airport, request, options: options);
  }

  $grpc.ResponseFuture<$4.ServiceListR> searchAirport(
      $1.SearchWithCodeI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchAirport, request, options: options);
  }
}

abstract class ServiceSServiceBase extends $grpc.Service {
  $core.String get $name => 'api.ServiceS';

  ServiceSServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ServiceCreateI, $4.ServiceMR>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ServiceCreateI.fromBuffer(value),
        ($4.ServiceMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ServiceUpdateI, $4.ServiceMR>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ServiceUpdateI.fromBuffer(value),
        ($4.ServiceMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $1.StatusR>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($1.StatusR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $4.ServiceMR>(
        'IdM',
        idM_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($4.ServiceMR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $4.ServiceUR>(
        'IdU',
        idU_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($4.ServiceUR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchI, $4.ServiceListR>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchI.fromBuffer(value),
        ($4.ServiceListR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByCodeI, $4.ServiceListR>(
        'Airport',
        airport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByCodeI.fromBuffer(value),
        ($4.ServiceListR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SearchWithCodeI, $4.ServiceListR>(
        'SearchAirport',
        searchAirport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SearchWithCodeI.fromBuffer(value),
        ($4.ServiceListR value) => value.writeToBuffer()));
  }

  $async.Future<$4.ServiceMR> create_Pre(
      $grpc.ServiceCall call, $async.Future<$4.ServiceCreateI> request) async {
    return create(call, await request);
  }

  $async.Future<$4.ServiceMR> update_Pre(
      $grpc.ServiceCall call, $async.Future<$4.ServiceUpdateI> request) async {
    return update(call, await request);
  }

  $async.Future<$1.StatusR> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return delete(call, await request);
  }

  $async.Future<$4.ServiceMR> idM_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return idM(call, await request);
  }

  $async.Future<$4.ServiceUR> idU_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return idU(call, await request);
  }

  $async.Future<$4.ServiceListR> search_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchI> request) async {
    return search(call, await request);
  }

  $async.Future<$4.ServiceListR> airport_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByCodeI> request) async {
    return airport(call, await request);
  }

  $async.Future<$4.ServiceListR> searchAirport_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SearchWithCodeI> request) async {
    return searchAirport(call, await request);
  }

  $async.Future<$4.ServiceMR> create(
      $grpc.ServiceCall call, $4.ServiceCreateI request);
  $async.Future<$4.ServiceMR> update(
      $grpc.ServiceCall call, $4.ServiceUpdateI request);
  $async.Future<$1.StatusR> delete($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$4.ServiceMR> idM($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$4.ServiceUR> idU($grpc.ServiceCall call, $1.GetByIdI request);
  $async.Future<$4.ServiceListR> search(
      $grpc.ServiceCall call, $1.SearchI request);
  $async.Future<$4.ServiceListR> airport(
      $grpc.ServiceCall call, $1.GetByCodeI request);
  $async.Future<$4.ServiceListR> searchAirport(
      $grpc.ServiceCall call, $1.SearchWithCodeI request);
}
