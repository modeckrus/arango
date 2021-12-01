///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use tagRDescriptor instead')
const TagR$json = const {
  '1': 'TagR',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 11, '6': '.api.Trs', '10': 'text'},
  ],
};

/// Descriptor for `TagR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagRDescriptor = $convert.base64Decode('CgRUYWdSEg4KAmlkGAEgASgJUgJpZBIcCgR0ZXh0GAIgASgLMgguYXBpLlRyc1IEdGV4dA==');
@$core.Deprecated('Use tagUpdateIDescriptor instead')
const TagUpdateI$json = const {
  '1': 'TagUpdateI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 3, '4': 1, '5': 11, '6': '.api.Trs', '10': 'text'},
  ],
};

/// Descriptor for `TagUpdateI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagUpdateIDescriptor = $convert.base64Decode('CgpUYWdVcGRhdGVJEh4KBGF1dGgYASABKAsyCi5hcGkuQXV0aElSBGF1dGgSDgoCaWQYAiABKAlSAmlkEhwKBHRleHQYAyABKAsyCC5hcGkuVHJzUgR0ZXh0');
@$core.Deprecated('Use tagCreateIDescriptor instead')
const TagCreateI$json = const {
  '1': 'TagCreateI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'text', '3': 2, '4': 1, '5': 11, '6': '.api.Trs', '10': 'text'},
  ],
};

/// Descriptor for `TagCreateI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagCreateIDescriptor = $convert.base64Decode('CgpUYWdDcmVhdGVJEh4KBGF1dGgYASABKAsyCi5hcGkuQXV0aElSBGF1dGgSHAoEdGV4dBgCIAEoCzIILmFwaS5UcnNSBHRleHQ=');
@$core.Deprecated('Use tagListRDescriptor instead')
const TagListR$json = const {
  '1': 'TagListR',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.api.TagR', '10': 'items'},
  ],
};

/// Descriptor for `TagListR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagListRDescriptor = $convert.base64Decode('CghUYWdMaXN0UhIfCgVpdGVtcxgBIAMoCzIJLmFwaS5UYWdSUgVpdGVtcw==');
