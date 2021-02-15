import 'package:grpc/grpc.dart' as grpc;
import 'package:ddm_gRPC/generated/meta_data/meta_data.pbgrpc.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';

void main(List<String> args) {
  final channel = grpc.ClientChannel(
    args.isNotEmpty ? args.first : 'localhost',
    port: 8080,
    options: const grpc.ChannelOptions(
        credentials: grpc.ChannelCredentials.insecure()),
  );

  final stub = DDMClient(
    channel,
    options: grpc.CallOptions(timeout: Duration(seconds: 30)),
  );
  final result = stub.getRulers(Empty());
  result.listen((value) {
    print(value);
  }).onDone(() {
    channel.shutdown();
  });
}
