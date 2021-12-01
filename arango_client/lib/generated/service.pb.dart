///
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $1;
import 'tag.pb.dart' as $3;

class ServiceMR extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceMR', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$1.Trs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', subBuilder: $1.Trs.create)
    ..aOM<$1.Trs>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $1.Trs.create)
    ..aOM<$3.TagListR>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', subBuilder: $3.TagListR.create)
    ..hasRequiredFields = false
  ;

  ServiceMR._() : super();
  factory ServiceMR({
    $core.String? id,
    $1.Trs? name,
    $1.Trs? description,
    $3.TagListR? tags,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (tags != null) {
      _result.tags = tags;
    }
    return _result;
  }
  factory ServiceMR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceMR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceMR clone() => ServiceMR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceMR copyWith(void Function(ServiceMR) updates) => super.copyWith((message) => updates(message as ServiceMR)) as ServiceMR; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceMR create() => ServiceMR._();
  ServiceMR createEmptyInstance() => create();
  static $pb.PbList<ServiceMR> createRepeated() => $pb.PbList<ServiceMR>();
  @$core.pragma('dart2js:noInline')
  static ServiceMR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceMR>(create);
  static ServiceMR? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Trs get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($1.Trs v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  $1.Trs ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Trs get description => $_getN(2);
  @$pb.TagNumber(3)
  set description($1.Trs v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  $1.Trs ensureDescription() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.TagListR get tags => $_getN(3);
  @$pb.TagNumber(4)
  set tags($3.TagListR v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTags() => $_has(3);
  @$pb.TagNumber(4)
  void clearTags() => clearField(4);
  @$pb.TagNumber(4)
  $3.TagListR ensureTags() => $_ensure(3);
}

class ServiceUR extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceUR', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  ServiceUR._() : super();
  factory ServiceUR({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<$core.String>? tags,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory ServiceUR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceUR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceUR clone() => ServiceUR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceUR copyWith(void Function(ServiceUR) updates) => super.copyWith((message) => updates(message as ServiceUR)) as ServiceUR; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceUR create() => ServiceUR._();
  ServiceUR createEmptyInstance() => create();
  static $pb.PbList<ServiceUR> createRepeated() => $pb.PbList<ServiceUR>();
  @$core.pragma('dart2js:noInline')
  static ServiceUR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceUR>(create);
  static ServiceUR? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tags => $_getList(3);
}

class ServiceCreateI extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceCreateI', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<$1.AuthI>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', subBuilder: $1.AuthI.create)
    ..aOM<$1.Trs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', subBuilder: $1.Trs.create)
    ..aOM<$1.Trs>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $1.Trs.create)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  ServiceCreateI._() : super();
  factory ServiceCreateI({
    $1.AuthI? auth,
    $1.Trs? name,
    $1.Trs? description,
    $core.Iterable<$core.String>? tags,
  }) {
    final _result = create();
    if (auth != null) {
      _result.auth = auth;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory ServiceCreateI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCreateI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCreateI clone() => ServiceCreateI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCreateI copyWith(void Function(ServiceCreateI) updates) => super.copyWith((message) => updates(message as ServiceCreateI)) as ServiceCreateI; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceCreateI create() => ServiceCreateI._();
  ServiceCreateI createEmptyInstance() => create();
  static $pb.PbList<ServiceCreateI> createRepeated() => $pb.PbList<ServiceCreateI>();
  @$core.pragma('dart2js:noInline')
  static ServiceCreateI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCreateI>(create);
  static ServiceCreateI? _defaultInstance;

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
  $1.Trs get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($1.Trs v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  $1.Trs ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Trs get description => $_getN(2);
  @$pb.TagNumber(3)
  set description($1.Trs v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
  @$pb.TagNumber(3)
  $1.Trs ensureDescription() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tags => $_getList(3);
}

class ServiceUpdateI extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceUpdateI', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOM<$1.AuthI>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', subBuilder: $1.AuthI.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$1.Trs>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', subBuilder: $1.Trs.create)
    ..aOM<$1.Trs>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description', subBuilder: $1.Trs.create)
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  ServiceUpdateI._() : super();
  factory ServiceUpdateI({
    $1.AuthI? auth,
    $core.String? id,
    $1.Trs? name,
    $1.Trs? description,
    $core.Iterable<$core.String>? tags,
  }) {
    final _result = create();
    if (auth != null) {
      _result.auth = auth;
    }
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory ServiceUpdateI.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceUpdateI.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceUpdateI clone() => ServiceUpdateI()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceUpdateI copyWith(void Function(ServiceUpdateI) updates) => super.copyWith((message) => updates(message as ServiceUpdateI)) as ServiceUpdateI; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceUpdateI create() => ServiceUpdateI._();
  ServiceUpdateI createEmptyInstance() => create();
  static $pb.PbList<ServiceUpdateI> createRepeated() => $pb.PbList<ServiceUpdateI>();
  @$core.pragma('dart2js:noInline')
  static ServiceUpdateI getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceUpdateI>(create);
  static ServiceUpdateI? _defaultInstance;

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
  $1.Trs get name => $_getN(2);
  @$pb.TagNumber(3)
  set name($1.Trs v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
  @$pb.TagNumber(3)
  $1.Trs ensureName() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Trs get description => $_getN(3);
  @$pb.TagNumber(4)
  set description($1.Trs v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
  @$pb.TagNumber(4)
  $1.Trs ensureDescription() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get tags => $_getList(4);
}

class ServiceItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  ServiceItem._() : super();
  factory ServiceItem({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory ServiceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceItem clone() => ServiceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceItem copyWith(void Function(ServiceItem) updates) => super.copyWith((message) => updates(message as ServiceItem)) as ServiceItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceItem create() => ServiceItem._();
  ServiceItem createEmptyInstance() => create();
  static $pb.PbList<ServiceItem> createRepeated() => $pb.PbList<ServiceItem>();
  @$core.pragma('dart2js:noInline')
  static ServiceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceItem>(create);
  static ServiceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class ServiceListR extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ServiceListR', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api'), createEmptyInstance: create)
    ..pc<ServiceItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ServiceItem.create)
    ..hasRequiredFields = false
  ;

  ServiceListR._() : super();
  factory ServiceListR({
    $core.Iterable<ServiceItem>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ServiceListR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceListR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceListR clone() => ServiceListR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceListR copyWith(void Function(ServiceListR) updates) => super.copyWith((message) => updates(message as ServiceListR)) as ServiceListR; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ServiceListR create() => ServiceListR._();
  ServiceListR createEmptyInstance() => create();
  static $pb.PbList<ServiceListR> createRepeated() => $pb.PbList<ServiceListR>();
  @$core.pragma('dart2js:noInline')
  static ServiceListR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceListR>(create);
  static ServiceListR? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceItem> get items => $_getList(0);
}

