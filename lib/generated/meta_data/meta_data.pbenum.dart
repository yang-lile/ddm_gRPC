///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MetaData extends $pb.ProtobufEnum {
  static const MetaData DEFAULT = MetaData._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const MetaData TITLE = MetaData._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TITLE');
  static const MetaData TEXT = MetaData._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');

  static const $core.List<MetaData> values = <MetaData> [
    DEFAULT,
    TITLE,
    TEXT,
  ];

  static final $core.Map<$core.int, MetaData> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaData? valueOf($core.int value) => _byValue[value];

  const MetaData._($core.int v, $core.String n) : super(v, n);
}

