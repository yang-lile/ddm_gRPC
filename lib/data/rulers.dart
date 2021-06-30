import 'package:ddm_gRPC/generated/google/protobuf/any.pb.dart';
import 'package:ddm_gRPC/generated/meta_data.pbenum.dart';
import 'package:ddm_gRPC/generated/meta_data.pbgrpc.dart';
import 'package:ddm_gRPC/generated/path.pb.dart';

class StaticDataPool {
  static const version = 1;
  static List<Ruler> rulers = [
    Ruler(
      rulerId: RulerId(
        source: 'office',
        ruleName: 'download',
      ),
      describe: 'It will arrow to system download fold.',
      scenesUsed: ['path'],
      system: System.android,
      data: Any.pack(
        Path(
          path: '/storage/emulated/0/Download',
        ),
      ),
    ),
    Ruler(
      rulerId: RulerId(
        source: 'office',
        ruleName: 'QQ Picture',
      ),
      describe: 'QQ picture fold.',
      scenesUsed: ['path'],
      system: System.android,
      data: Any.pack(
        Path(
          path: '/storage/emulated/0/Picture',
        ),
      ),
    ),
    Ruler(
      rulerId: RulerId(
        source: 'office',
        ruleName: 'Note',
      ),
      describe: 'a simple note rule.',
      scenesUsed: ['Note'],
      system: System.android,
      data: Any.pack(
        Path(
          path: '/storage/emulated/0/Download',
        ),
      ),
    )
  ];
}
