///
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'file.pb.dart' as $0;
import 'common.pb.dart' as $1;
export 'file.pb.dart';

class FileSClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.AddFileI, $0.FileR>(
      '/api.FileS/Create',
      ($0.AddFileI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FileR.fromBuffer(value));
  static final _$id = $grpc.ClientMethod<$1.GetByIdI, $0.FileR>(
      '/api.FileS/Id',
      ($1.GetByIdI value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FileR.fromBuffer(value));

  FileSClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.FileR> create($0.AddFileI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.FileR> id($1.GetByIdI request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$id, request, options: options);
  }
}

abstract class FileSServiceBase extends $grpc.Service {
  $core.String get $name => 'api.FileS';

  FileSServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddFileI, $0.FileR>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddFileI.fromBuffer(value),
        ($0.FileR value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetByIdI, $0.FileR>(
        'Id',
        id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetByIdI.fromBuffer(value),
        ($0.FileR value) => value.writeToBuffer()));
  }

  $async.Future<$0.FileR> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddFileI> request) async {
    return create(call, await request);
  }

  $async.Future<$0.FileR> id_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetByIdI> request) async {
    return id(call, await request);
  }

  $async.Future<$0.FileR> create($grpc.ServiceCall call, $0.AddFileI request);
  $async.Future<$0.FileR> id($grpc.ServiceCall call, $1.GetByIdI request);
}
