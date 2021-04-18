# Introduction

ddm_gRPC is Micro-Service of ddm

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
