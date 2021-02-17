import 'dart:convert';
import 'dart:io';

import 'package:ddm_gRPC/data/rulers.dart';
import 'package:ddm_gRPC/generated/meta_data/meta_data.pb.dart';

// io from json
void main(List<String> arguments) {
  // mainWrite();
  // mainRead();
}

void mainWrite() {
  var file = File('json/db.json');
  file.writeAsStringSync(
    jsonEncode(
      StaticDataPool.rulers,
      toEncodable: (value) {
        return (value as Ruler).writeToJson();
      },
    ),
    mode: FileMode.write,
  );
}

void mainRead() {
  var data = List<Ruler>.empty(growable: true);
  var file = File('json/db.json');
  jsonDecode(file.readAsStringSync(), reviver: (a, b) {
    if (a == null) {
      return null;
    }
    data.add(Ruler.fromJson(b));
    return null;
  });
  print(data[1].instruction);
}
