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
    // TODO: implement getStars
    throw UnimplementedError();
  }
}

Future<void> main(List<String> args) async {
  // start server
  final server = grpc.Server([DDMService()]);
  await server.serve(port: 8080);
  print('server has start at ${server.port}');
}
