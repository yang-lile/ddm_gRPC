# Introduction

ddm_gRPC is Micro-Service of ddm

- [Introduction](#introduction)
  - [data struct](#data-struct)
    - [Value + SecondaryValue + Decoration = Ruler](#value--secondaryvalue--decoration--ruler)
    - [Naming Style](#naming-style)
  - [Compile the Document](#compile-the-document)
    - [Generate .proto file](#generate-proto-file)
    - [test server on local](#test-server-on-local)
    - [test server on docker](#test-server-on-docker)

## data struct

### Value + SecondaryValue + Decoration = Ruler

when you using the rulers, a ruler compose by values ruler add second value ruler add decorations ruler.
so a usable ruler is component ruler.

```null
Function ruler
 +--Component ruler
     +--Value ruler
     +--Secondary value ruler
     +--decoration ruler
 +--Component ruler
     +--Value ruler
     +--decoration ruler
 +--Component ruler
     +--...
 +--Component ruler
     +--...
    ...
```

decoration ruler has similar parent component ruler with values ruler. like this:

> code from <https://material.io/components/text-fields/flutter#filled-text>

```dart
TextFormField(
  cursorColor: Theme.of(context).cursorColor, // decoration ruler
  initialValue: 'Input text', // value
  maxLength: 20, // Secondary value
  decoration: InputDecoration(
    icon: Icon(Icons.favorite), // Secondary value
    labelText: 'Label text', // Secondary value
    labelStyle: TextStyle(
      color: Color(0xFF6200EE), // decoration ruler
    ),
    helperText: 'Helper text', // Secondary value
    suffixIcon: Icon(
      Icons.check_circle, // Secondary value
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF6200EE)), // decoration ruler
    ),
  ),
),
```

in short, 1. user input value is value ruler; 2. hit argument is Secondary value; 3. style value is decoration;

### Naming Style

- Value: primary value -> P
- Secondary value: Secondary value -> S
- Decoration: Decoration -> D

the Component ruler define by a fold named `TextFormField` -> `TextFormField.proto` -> `message TextFormFieldP, message TextFormFieldS, message TextFormFieldD`.

## Compile the Document

### Generate .proto file

```powershell
protoc -I protos/ protos/meta_data.proto --dart_out=grpc:lib/generated/meta_data
```

### test server on local

```powershell
# start server
dart bin/server.dart
# waiting a little while
dart bin/client.dart
```

### test server on docker

```powershell
# push to docker
docker build . -t liluaya/ddm_server
docker push liluaya/ddm_server

# switch to your server
docker pull liluaya/ddm_server
# 9090 is your host server open port
docker run -d -p 9090:8080 liluaya/ddm_server
docker ps

# switch to your pc do local request, xx is your ip address, yy is your open port like this 9090
dart bin/client.dart xx.xx.xx.xx yy
```
