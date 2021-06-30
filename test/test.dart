import 'package:ddm_gRPC/data/rulers.dart';
import 'package:ddm_gRPC/ddm_server.dart';
import 'package:ddm_gRPC/generated/meta_data.pbgrpc.dart';
import 'package:test/test.dart';
import 'package:grpc/grpc.dart' as grpc;

void main({List<String> args}) {
  group(
    'server start',
    () {
      test(
        'get server',
        () async {
          await startServer();

          final channel = grpc.ClientChannel(
            'localhost',
            port: 8080,
            options: const grpc.ChannelOptions(
              credentials: grpc.ChannelCredentials.insecure(),
            ),
          );
          final stub = DDMClient(
            channel,
            options: grpc.CallOptions(timeout: Duration(seconds: 30)),
          );

          final result = stub.getRulers(Empty());
          expect(await result.toList(), StaticDataPool.rulers);
        },
      );
    },
  );
  return;
}
