import 'package:ddm_gRPC/data/rulers.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';
import 'package:grpc/grpc.dart' as grpc;

class DDMService extends DDMServiceBase {
  @override
  Stream<Ruler> getRulers(grpc.ServiceCall call, Empty request) {
    return Stream.fromIterable(StaticDataPool.rulers);
  }
}

Future<void> main(List<String> args) async {
  // start server
  final localhost = args.isNotEmpty ? args[0] : 'localhost';
  final server = await grpc.Server([DDMService()]);
  await server.serve(address: localhost, port: 8080);
  print('the server has begin at $localhost:${server.port}');
}
