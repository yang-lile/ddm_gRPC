import 'dart:math';

import 'package:ddm_gRPC/data/rulers.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';
import 'package:grpc/grpc.dart' as grpc;

class DDMService extends DDMServiceBase {
  @override
  Stream<Ruler> getRulers(grpc.ServiceCall call, Empty request) {
    return Stream.fromIterable(StaticDataPool.rulers);
  }

  @override
  Future<Stars> getStars(grpc.ServiceCall call, RulerId request) {
    return Future.value(Stars(starNumber: Random().nextInt(100)));
  }

  @override
  Future<NeedUpdate> getVersion(grpc.ServiceCall call, Version request) {
    if (request.version < StaticDataPool.version) {
      return Future.value(NeedUpdate(needUpdate: true));
    } else if (request.version == StaticDataPool.version) {
      return Future.value(NeedUpdate(needUpdate: false));
    } else {
      return Future.error(400);
    }
  }
}

Future<void> startServer({List<String> args}) async {
  // start server
  final server = grpc.Server([DDMService()]);
  await server.serve(port: 8080);
  print('server has start at ${server.port}');
}
