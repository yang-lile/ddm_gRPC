import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';

class StaticDataPool {
  static const version = 0;
  static List<Ruler> rulers = [
    Ruler(
      instruction: '''官方组件-default。提供样例模板。
      `source`为来源名，有两个保留字段("官方_元","官方")，分别代表官方元组件，官方组件。
      `rulerName`为规则名，没有特别要求。
      `scenesUsed`为应用场景，要求英文全小写带下连字符，中文要求尽量简短。
      `metaData`元数据，使用枚举类型来描述功能，元数据是一个列表，每一个值对应一种组件，这个在官方_元的示范样例中可以看得出。
      `instruction`用于介绍组件的使用方法。标注了部分组件的特殊用法。''',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'default',
      ),
      scenesUsed: ['password'],
      metaData: [MetaData.SINGLE_TEXT, MetaData.PASS_WORD],
    ),
    Ruler(
      instruction: '官方组件-title。用于提供一个大号加粗字体的标题，用于给手账、密码本等提供可见的标题',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'title',
      ),
      scenesUsed: ['note', 'password'],
      metaData: [MetaData.TITLE],
    ),
    Ruler(
      instruction: '官方组件-text。提供一段文字来介绍或者记录各种东西',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'text',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.TEXT],
    ),
    Ruler(
      instruction: '官方组件-time。提供一个可以快速写入时间的组件，后期将支持闹钟提醒功能',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'time',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.TIME],
    ),
    Ruler(
      instruction: '官方组件-message。提供一小段说明性文字，用于解释说明',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'message',
      ),
      scenesUsed: ['password'],
      metaData: [MetaData.MESSAGE],
    ),
    Ruler(
      instruction: '官方组件-path。提供一个可以显示文件的组件，甚至是展示一些支持的文件格式的展示',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'path',
      ),
      scenesUsed: ['file_manager'],
      metaData: [MetaData.PATH],
    ),
    Ruler(
      instruction: '官方组件-image。提供一个可以显示图片的组件，用于插入图片',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'image',
      ),
      scenesUsed: ['note'],
      metaData: [MetaData.IMAGE],
    ),
    Ruler(
      instruction: '官方组件-singleText。提供单行的可输入的组件',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'single_text',
      ),
      scenesUsed: ['pass_word'],
      metaData: [MetaData.SINGLE_TEXT],
    ),
    Ruler(
      instruction: '官方组件-pass_word。提供隐藏数据的密码',
      rulerId: RulerId(
        source: '官方_元',
        ruleName: 'pass_word',
      ),
      scenesUsed: ['pass_word'],
      metaData: [MetaData.PASS_WORD],
    ),
    Ruler(
      instruction: '官方组件-password Note。官方的密码本示例',
      rulerId: RulerId(
        ruleName: '密码本',
        source: '官方',
      ),
      scenesUsed: ['pass_word'],
      metaData: [
        MetaData.MESSAGE,
        MetaData.SINGLE_TEXT,
        MetaData.PASS_WORD,
      ],
    )
  ];
}
