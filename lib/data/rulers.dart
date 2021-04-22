import 'package:ddm_gRPC/generated/meta_data.pbgrpc.dart';
import 'package:ddm_gRPC/generated/modules/text_form_field.pb.dart';

class StaticDataPool {
  static const version = 1;
  static List<Ruler> rulers = [
    Ruler(
      rulerId: RulerId(source: '官方', ruleName: '文本'),
      instruction: '提供一个演示使用的短文本',
      scenesUsed: ['临时记录', '传输文本'],
      pkey: Pkey(
        textFormFieldP: primary(text: 'text'),
      ),
    ),
  ];
}
