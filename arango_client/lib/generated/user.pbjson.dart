///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userLevelEDescriptor instead')
const UserLevelE$json = const {
  '1': 'UserLevelE',
  '2': const [
    const {'1': 'Unauth', '2': 0},
    const {'1': 'Auth', '2': 1},
  ],
};

/// Descriptor for `UserLevelE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List userLevelEDescriptor = $convert.base64Decode('CgpVc2VyTGV2ZWxFEgoKBlVuYXV0aBAAEggKBEF1dGgQAQ==');
@$core.Deprecated('Use userRDescriptor instead')
const UserR$json = const {
  '1': 'UserR',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'avatar', '3': 4, '4': 1, '5': 11, '6': '.api.FileR', '9': 0, '10': 'avatar', '17': true},
    const {'1': 'level', '3': 5, '4': 1, '5': 14, '6': '.api.UserLevelE', '10': 'level'},
  ],
  '8': const [
    const {'1': '_avatar'},
  ],
};

/// Descriptor for `UserR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRDescriptor = $convert.base64Decode('CgVVc2VyUhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSJwoGYXZhdGFyGAQgASgLMgouYXBpLkZpbGVSSABSBmF2YXRhcogBARIlCgVsZXZlbBgFIAEoDjIPLmFwaS5Vc2VyTGV2ZWxFUgVsZXZlbEIJCgdfYXZhdGFy');
@$core.Deprecated('Use userItemRDescriptor instead')
const UserItemR$json = const {
  '1': 'UserItemR',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'avatar', '3': 4, '4': 1, '5': 11, '6': '.api.FileR', '9': 0, '10': 'avatar', '17': true},
    const {'1': 'level', '3': 5, '4': 1, '5': 14, '6': '.api.UserLevelE', '10': 'level'},
    const {'1': 'files', '3': 6, '4': 3, '5': 11, '6': '.api.FileR', '10': 'files'},
  ],
  '8': const [
    const {'1': '_avatar'},
  ],
};

/// Descriptor for `UserItemR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userItemRDescriptor = $convert.base64Decode('CglVc2VySXRlbVISDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFZW1haWwYAyABKAlSBWVtYWlsEicKBmF2YXRhchgEIAEoCzIKLmFwaS5GaWxlUkgAUgZhdmF0YXKIAQESJQoFbGV2ZWwYBSABKA4yDy5hcGkuVXNlckxldmVsRVIFbGV2ZWwSIAoFZmlsZXMYBiADKAsyCi5hcGkuRmlsZVJSBWZpbGVzQgkKB19hdmF0YXI=');
@$core.Deprecated('Use userListRDescriptor instead')
const UserListR$json = const {
  '1': 'UserListR',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.api.UserItemR', '10': 'items'},
    const {'1': 'total', '3': 2, '4': 1, '5': 3, '10': 'total'},
  ],
};

/// Descriptor for `UserListR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListRDescriptor = $convert.base64Decode('CglVc2VyTGlzdFISJAoFaXRlbXMYASADKAsyDi5hcGkuVXNlckl0ZW1SUgVpdGVtcxIUCgV0b3RhbBgCIAEoA1IFdG90YWw=');
@$core.Deprecated('Use createUserIDescriptor instead')
const CreateUserI$json = const {
  '1': 'CreateUserI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'level', '3': 4, '4': 1, '5': 14, '6': '.api.UserLevelE', '10': 'level'},
    const {'1': 'password', '3': 5, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `CreateUserI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserIDescriptor = $convert.base64Decode('CgtDcmVhdGVVc2VySRIeCgRhdXRoGAEgASgLMgouYXBpLkF1dGhJUgRhdXRoEhIKBG5hbWUYAiABKAlSBG5hbWUSFAoFZW1haWwYAyABKAlSBWVtYWlsEiUKBWxldmVsGAQgASgOMg8uYXBpLlVzZXJMZXZlbEVSBWxldmVsEhoKCHBhc3N3b3JkGAUgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use updateUserIDescriptor instead')
const UpdateUserI$json = const {
  '1': 'UpdateUserI',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 1, '5': 11, '6': '.api.AuthI', '10': 'auth'},
    const {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    const {'1': 'avatar_id', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'avatarId', '17': true},
    const {'1': 'level', '3': 6, '4': 1, '5': 14, '6': '.api.UserLevelE', '9': 3, '10': 'level', '17': true},
    const {'1': 'password', '3': 7, '4': 1, '5': 9, '9': 4, '10': 'password', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
    const {'1': '_email'},
    const {'1': '_avatar_id'},
    const {'1': '_level'},
    const {'1': '_password'},
  ],
};

/// Descriptor for `UpdateUserI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserIDescriptor = $convert.base64Decode('CgtVcGRhdGVVc2VySRIeCgRhdXRoGAEgASgLMgouYXBpLkF1dGhJUgRhdXRoEg4KAmlkGAIgASgJUgJpZBIXCgRuYW1lGAMgASgJSABSBG5hbWWIAQESGQoFZW1haWwYBCABKAlIAVIFZW1haWyIAQESIAoJYXZhdGFyX2lkGAUgASgJSAJSCGF2YXRhcklkiAEBEioKBWxldmVsGAYgASgOMg8uYXBpLlVzZXJMZXZlbEVIA1IFbGV2ZWyIAQESHwoIcGFzc3dvcmQYByABKAlIBFIIcGFzc3dvcmSIAQFCBwoFX25hbWVCCAoGX2VtYWlsQgwKCl9hdmF0YXJfaWRCCAoGX2xldmVsQgsKCV9wYXNzd29yZA==');
@$core.Deprecated('Use authByEmailIDescriptor instead')
const AuthByEmailI$json = const {
  '1': 'AuthByEmailI',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'locale', '3': 3, '4': 1, '5': 9, '10': 'locale'},
  ],
};

/// Descriptor for `AuthByEmailI`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authByEmailIDescriptor = $convert.base64Decode('CgxBdXRoQnlFbWFpbEkSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIWCgZsb2NhbGUYAyABKAlSBmxvY2FsZQ==');
