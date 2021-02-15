import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';

class StaticDataPool {
  static List<Ruler> rulers = [
    Ruler(
      source: 'office',
      instruction: '官方组件',
      ruleName: 'null1',
      scenesUsed: ['qq', '微信'],
      metaData: [MetaData.DEFAULT],
    ),
  ];
}
