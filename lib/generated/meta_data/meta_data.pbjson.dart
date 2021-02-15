///
//  Generated code. Do not modify.
//  source: meta_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use metaDataDescriptor instead')
const MetaData$json = const {
  '1': 'MetaData',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'TITLE', '2': 1},
    const {'1': 'TEXT', '2': 2},
  ],
};

/// Descriptor for `MetaData`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List metaDataDescriptor = $convert.base64Decode('CghNZXRhRGF0YRILCgdERUZBVUxUEAASCQoFVElUTEUQARIICgRURVhUEAI=');
@$core.Deprecated('Use rulerDescriptor instead')
const Ruler$json = const {
  '1': 'Ruler',
  '2': const [
    const {'1': 'stars', '3': 2, '4': 1, '5': 5, '10': 'stars'},
    const {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'instruction', '3': 4, '4': 1, '5': 9, '10': 'instruction'},
    const {'1': 'ruleName', '3': 5, '4': 1, '5': 9, '10': 'ruleName'},
    const {'1': 'scenesUsed', '3': 6, '4': 3, '5': 9, '10': 'scenesUsed'},
    const {'1': 'metaData', '3': 7, '4': 3, '5': 14, '6': '.rulers.MetaData', '10': 'metaData'},
  ],
};

/// Descriptor for `Ruler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulerDescriptor = $convert.base64Decode('CgVSdWxlchIUCgVzdGFycxgCIAEoBVIFc3RhcnMSFgoGc291cmNlGAMgASgJUgZzb3VyY2USIAoLaW5zdHJ1Y3Rpb24YBCABKAlSC2luc3RydWN0aW9uEhoKCHJ1bGVOYW1lGAUgASgJUghydWxlTmFtZRIeCgpzY2VuZXNVc2VkGAYgAygJUgpzY2VuZXNVc2VkEiwKCG1ldGFEYXRhGAcgAygOMhAucnVsZXJzLk1ldGFEYXRhUghtZXRhRGF0YQ==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
