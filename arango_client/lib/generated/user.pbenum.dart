///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserLevelE extends $pb.ProtobufEnum {
  static const UserLevelE Unauth = UserLevelE._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unauth');
  static const UserLevelE Auth = UserLevelE._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Auth');

  static const $core.List<UserLevelE> values = <UserLevelE> [
    Unauth,
    Auth,
  ];

  static final $core.Map<$core.int, UserLevelE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserLevelE? valueOf($core.int value) => _byValue[value];

  const UserLevelE._($core.int v, $core.String n) : super(v, n);
}

