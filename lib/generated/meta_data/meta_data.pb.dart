///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'meta_data.pbenum.dart';

export 'meta_data.pbenum.dart';

class Ruler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ruler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stars', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instruction')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ruleName', protoName: 'ruleName')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scenesUsed', protoName: 'scenesUsed')
    ..pc<MetaData>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaData', $pb.PbFieldType.PE, protoName: 'metaData', valueOf: MetaData.valueOf, enumValues: MetaData.values)
    ..hasRequiredFields = false
  ;

  Ruler._() : super();
  factory Ruler({
    $core.int? stars,
    $core.String? source,
    $core.String? instruction,
    $core.String? ruleName,
    $core.Iterable<$core.String>? scenesUsed,
    $core.Iterable<MetaData>? metaData,
  }) {
    final _result = create();
    if (stars != null) {
      _result.stars = stars;
    }
    if (source != null) {
      _result.source = source;
    }
    if (instruction != null) {
      _result.instruction = instruction;
    }
    if (ruleName != null) {
      _result.ruleName = ruleName;
    }
    if (scenesUsed != null) {
      _result.scenesUsed.addAll(scenesUsed);
    }
    if (metaData != null) {
      _result.metaData.addAll(metaData);
    }
    return _result;
  }
  factory Ruler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ruler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ruler clone() => Ruler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ruler copyWith(void Function(Ruler) updates) => super.copyWith((message) => updates(message as Ruler)) as Ruler; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ruler create() => Ruler._();
  Ruler createEmptyInstance() => create();
  static $pb.PbList<Ruler> createRepeated() => $pb.PbList<Ruler>();
  @$core.pragma('dart2js:noInline')
  static Ruler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ruler>(create);
  static Ruler? _defaultInstance;

  @$pb.TagNumber(2)
  $core.int get stars => $_getIZ(0);
  @$pb.TagNumber(2)
  set stars($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStars() => $_has(0);
  @$pb.TagNumber(2)
  void clearStars() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get source => $_getSZ(1);
  @$pb.TagNumber(3)
  set source($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get instruction => $_getSZ(2);
  @$pb.TagNumber(4)
  set instruction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasInstruction() => $_has(2);
  @$pb.TagNumber(4)
  void clearInstruction() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get ruleName => $_getSZ(3);
  @$pb.TagNumber(5)
  set ruleName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasRuleName() => $_has(3);
  @$pb.TagNumber(5)
  void clearRuleName() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get scenesUsed => $_getList(4);

  @$pb.TagNumber(7)
  $core.List<MetaData> get metaData => $_getList(5);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rulers'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

