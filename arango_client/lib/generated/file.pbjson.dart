///
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use fileTypeEDescriptor instead')
const FileTypeE$json = const {
  '1': 'FileTypeE',
  '2': const [
    const {'1': 'file', '2': 0},
    const {'1': 'image', '2': 1},
  ],
};

/// Descriptor for `FileTypeE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fileTypeEDescriptor = $convert.base64Decode('CglGaWxlVHlwZUUSCAoEZmlsZRAAEgkKBWltYWdlEAE=');
@$core.Deprecated('Use fileRDescriptor instead')
const FileR$json = const {
  '1': 'FileR',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.api.FileTypeE', '10': 'type'},
  ],
};

/// Descriptor for `FileR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileRDescriptor = $convert.base64Decode('CgVGaWxlUhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIiCgR0eXBlGAMgASgOMg4uYXBpLkZpbGVUeXBlRVIEdHlwZQ==');
@$core.Deprecated('Use addFileIDescriptor instead')
const AddFileI$json = const {
  '1': 'AddFileI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.api.FileTypeE', '10': 'type'},
  ],
};

/// Descriptor for `AddFileI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addFileIDescriptor = $convert.base64Decode('CghBZGRGaWxlSRIeCgRhdXRoGAEgASgLMgouYXBpLkF1dGhJUgRhdXRoEhIKBG5hbWUYAiABKAlSBG5hbWUSIgoEdHlwZRgDIAEoDjIOLmFwaS5GaWxlVHlwZUVSBHR5cGU=');
@$core.Deprecated('Use fileListDescriptor instead')
const FileList$json = const {
  '1': 'FileList',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.api.FileR', '10': 'items'},
  ],
};

/// Descriptor for `FileList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileListDescriptor = $convert.base64Decode('CghGaWxlTGlzdBIgCgVpdGVtcxgBIAMoCzIKLmFwaS5GaWxlUlIFaXRlbXM=');
