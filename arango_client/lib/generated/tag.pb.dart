///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $1;

class TagR extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagR', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$1.Trs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text', subBuilder: $1.Trs.create)
    ..hasRequiredFields = false
  ;

  TagR._() : super();
  factory TagR({
    $core.String? id,
    $1.Trs? text,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory TagR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagR clone() => TagR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagR copyWith(void Function(TagR) updates) => super.copyWith((message) => updates(message as TagR)) as TagR; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagR create() => TagR._();
  TagR createEmptyInstance() => create();
  static $pb.PbList<TagR> createRepeated() => $pb.PbList<TagR>();
  @$core.pragma('dart2js:noInline')
  static TagR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagR>(create);
  static TagR? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Trs get text => $_getN(1);
  @$pb.TagNumber(2)
  set text($1.Trs v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
  @$pb.TagNumber(2)
  $1.Trs ensureText() => $_ensure(1);
}

class TagUpdateI extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagUpdateI', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<$1.AuthI>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', subBuilder: $1.AuthI.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$1.Trs>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text', subBuilder: $1.Trs.create)
    ..hasRequiredFields = false
  ;

  TagUpdateI._() : super();
  factory TagUpdateI({
    $1.AuthI? auth,
    $core.String? id,
    $1.Trs? text,
  }) {
    final _result = create();
    if (auth != null) {
      _result.auth = auth;
    }
    if (id != null) {
      _result.id = id;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory TagUpdateI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagUpdateI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagUpdateI clone() => TagUpdateI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagUpdateI copyWith(void Function(TagUpdateI) updates) => super.copyWith((message) => updates(message as TagUpdateI)) as TagUpdateI; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagUpdateI create() => TagUpdateI._();
  TagUpdateI createEmptyInstance() => create();
  static $pb.PbList<TagUpdateI> createRepeated() => $pb.PbList<TagUpdateI>();
  @$core.pragma('dart2js:noInline')
  static TagUpdateI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagUpdateI>(create);
  static TagUpdateI? _defaultInstance;

  @$pb.TagNumber(1)
  $1.AuthI get auth => $_getN(0);
  @$pb.TagNumber(1)
  set auth($1.AuthI v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuth() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuth() => clearField(1);
  @$pb.TagNumber(1)
  $1.AuthI ensureAuth() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $1.Trs get text => $_getN(2);
  @$pb.TagNumber(3)
  set text($1.Trs v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
  @$pb.TagNumber(3)
  $1.Trs ensureText() => $_ensure(2);
}

class TagCreateI extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagCreateI', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<$1.AuthI>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', subBuilder: $1.AuthI.create)
    ..aOM<$1.Trs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text', subBuilder: $1.Trs.create)
    ..hasRequiredFields = false
  ;

  TagCreateI._() : super();
  factory TagCreateI({
    $1.AuthI? auth,
    $1.Trs? text,
  }) {
    final _result = create();
    if (auth != null) {
      _result.auth = auth;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory TagCreateI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagCreateI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagCreateI clone() => TagCreateI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagCreateI copyWith(void Function(TagCreateI) updates) => super.copyWith((message) => updates(message as TagCreateI)) as TagCreateI; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagCreateI create() => TagCreateI._();
  TagCreateI createEmptyInstance() => create();
  static $pb.PbList<TagCreateI> createRepeated() => $pb.PbList<TagCreateI>();
  @$core.pragma('dart2js:noInline')
  static TagCreateI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagCreateI>(create);
  static TagCreateI? _defaultInstance;

  @$pb.TagNumber(1)
  $1.AuthI get auth => $_getN(0);
  @$pb.TagNumber(1)
  set auth($1.AuthI v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuth() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuth() => clearField(1);
  @$pb.TagNumber(1)
  $1.AuthI ensureAuth() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Trs get text => $_getN(1);
  @$pb.TagNumber(2)
  set text($1.Trs v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
  @$pb.TagNumber(2)
  $1.Trs ensureText() => $_ensure(1);
}

class TagListR extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagListR', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..pc<TagR>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TagR.create)
    ..hasRequiredFields = false
  ;

  TagListR._() : super();
  factory TagListR({
    $core.Iterable<TagR>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory TagListR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagListR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagListR clone() => TagListR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagListR copyWith(void Function(TagListR) updates) => super.copyWith((message) => updates(message as TagListR)) as TagListR; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagListR create() => TagListR._();
  TagListR createEmptyInstance() => create();
  static $pb.PbList<TagListR> createRepeated() => $pb.PbList<TagListR>();
  @$core.pragma('dart2js:noInline')
  static TagListR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagListR>(create);
  static TagListR? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TagR> get items => $_getList(0);
}

