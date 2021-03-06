///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authIDescriptor instead')
const AuthI$json = const {
  '1': 'AuthI',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'locale', '3': 2, '4': 1, '5': 9, '10': 'locale'},
  ],
};

/// Descriptor for `AuthI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authIDescriptor = $convert.base64Decode('CgVBdXRoSRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFgoGbG9jYWxlGAIgASgJUgZsb2NhbGU=');
@$core.Deprecated('Use getByIdIDescriptor instead')
const GetByIdI$json = const {
  '1': 'GetByIdI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetByIdI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdIDescriptor = $convert.base64Decode('CghHZXRCeUlkSRIeCgRhdXRoGAEgASgLMgouYXBpLkF1dGhJUgRhdXRoEg4KAmlkGAIgASgJUgJpZA==');
@$core.Deprecated('Use getByCodeIDescriptor instead')
const GetByCodeI$json = const {
  '1': 'GetByCodeI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `GetByCodeI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByCodeIDescriptor = $convert.base64Decode('CgpHZXRCeUNvZGVJEh4KBGF1dGgYASABKAsyCi5hcGkuQXV0aElSBGF1dGgSEgoEY29kZRgCIAEoCVIEY29kZQ==');
@$core.Deprecated('Use statusRDescriptor instead')
const StatusR$json = const {
  '1': 'StatusR',
  '2': const [
    const {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
  ],
};

/// Descriptor for `StatusR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRDescriptor = $convert.base64Decode('CgdTdGF0dXNSEg4KAm9rGAEgASgIUgJvaw==');
@$core.Deprecated('Use searchIDescriptor instead')
const SearchI$json = const {
  '1': 'SearchI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    const {'1': 'skip', '3': 3, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 3, '10': 'limit'},
  ],
  '8': const [
    const {'1': '_text'},
  ],
};

/// Descriptor for `SearchI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchIDescriptor = $convert.base64Decode('CgdTZWFyY2hJEh4KBGF1dGgYASABKAsyCi5hcGkuQXV0aElSBGF1dGgSFwoEdGV4dBgCIAEoCUgAUgR0ZXh0iAEBEhIKBHNraXAYAyABKANSBHNraXASFAoFbGltaXQYBCABKANSBWxpbWl0QgcKBV90ZXh0');
@$core.Deprecated('Use trDescriptor instead')
const Tr$json = const {
  '1': 'Tr',
  '2': const [
    const {'1': 'lang', '3': 1, '4': 1, '5': 9, '10': 'lang'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `Tr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trDescriptor = $convert.base64Decode('CgJUchISCgRsYW5nGAEgASgJUgRsYW5nEhIKBHRleHQYAiABKAlSBHRleHQ=');
@$core.Deprecated('Use trsDescriptor instead')
const Trs$json = const {
  '1': 'Trs',
  '2': const [
    const {'1': 'trs', '3': 1, '4': 3, '5': 11, '6': '.api.Tr', '10': 'trs'},
  ],
};

/// Descriptor for `Trs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trsDescriptor = $convert.base64Decode('CgNUcnMSGQoDdHJzGAEgAygLMgcuYXBpLlRyUgN0cnM=');
@$core.Deprecated('Use searchWithCodeIDescriptor instead')
const SearchWithCodeI$json = const {
  '1': 'SearchWithCodeI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    const {'1': 'skip', '3': 3, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'limit', '3': 4, '4': 1, '5': 3, '10': 'limit'},
    const {'1': 'code', '3': 5, '4': 1, '5': 9, '10': 'code'},
  ],
  '8': const [
    const {'1': '_text'},
  ],
};

/// Descriptor for `SearchWithCodeI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchWithCodeIDescriptor = $convert.base64Decode('Cg9TZWFyY2hXaXRoQ29kZUkSHgoEYXV0aBgBIAEoCzIKLmFwaS5BdXRoSVIEYXV0aBIXCgR0ZXh0GAIgASgJSABSBHRleHSIAQESEgoEc2tpcBgDIAEoA1IEc2tpcBIUCgVsaW1pdBgEIAEoA1IFbGltaXQSEgoEY29kZRgFIAEoCVIEY29kZUIHCgVfdGV4dA==');
