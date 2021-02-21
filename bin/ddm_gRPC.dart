// io from json

import 'package:ddm_gRPC/ddm_server.dart';

void main(List<String> arguments) {
  // mainWrite();
  // mainRead();
  startServer();
}

// void mainWrite() {
//   var file = File('json/db.json');
//   file.writeAsStringSync(
//     jsonEncode(
//       StaticDataPool.rulers,
//       toEncodable: (value) {
//         return (value as Ruler).writeToJson();
//       },
//     ),
//     mode: FileMode.write,
//   );
// }

// void mainRead() {
//   var data = List<Ruler>.empty(growable: true);
//   var file = File('json/db.json');
//   jsonDecode(file.readAsStringSync(), reviver: (a, b) {
//     if (a == null) {
//       return null;
//     }
//     data.add(Ruler.fromJson(b));
//     return null;
//   });
//   print(data[1].instruction);
// }
