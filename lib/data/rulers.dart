import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';

class StaticDataPool {
  static List<Ruler> rulers = [
    Ruler(
      instruction: '官方组件-title。用于提供一个大号加粗字体的标题，用于给手账、密码本等提供可见的标题',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'title',
      ),
      scenesUsed: ['note', 'password'],
      metaData: [MetaData.TITLE],
    ),
    Ruler(
      instruction: '官方组件-text。提供一段文字来介绍或者记录各种东西',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'text',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.TEXT],
    ),
    Ruler(
      instruction: '官方组件-time。提供一个可以快速写入时间的组件，后期将支持闹钟提醒功能',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'time',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.TIME],
    ),
    Ruler(
      instruction: '官方组件-message。提供一小段说明性文字，用于解释说明',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'message',
      ),
      scenesUsed: ['password'],
      metaData: [MetaData.MESSAGE],
    ),
    Ruler(
      instruction: '官方组件-path。提供一个可以显示文件的组件，甚至是展示一些支持的文件格式的展示',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'path',
      ),
      scenesUsed: ['file_manager'],
      metaData: [MetaData.PATH],
    ),
    Ruler(
      instruction: '官方组件-image。提供一个可以显示图片的组件，用于插入图片',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'image',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.IMAGE],
    ),
    Ruler(
      instruction: '官方组件-singleText。提供单行的可输入的组件',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'single_text',
      ),
      scenesUsed: ['pass_word'],
      metaData: [MetaData.SIGNLE_TEXT],
    ),
    Ruler(
      instruction: '官方组件-pass_word。提供隐藏数据的密码',
      rulerId: RulerId(
        source: 'office_meta',
        ruleName: 'pass_word',
      ),
      scenesUsed: ['pass_word'],
      metaData: [MetaData.PASS_WORD],
    ),
  ];
}
