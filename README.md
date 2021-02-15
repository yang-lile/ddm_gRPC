# Introduction

ddm_gRPC is Micro-Service of ddm

# Compile the Document

## Generate .proto file

```Powershell
protoc -I protos/ protos/meta_data.proto --dart_out=grpc:lib/generated/meta_data
```
