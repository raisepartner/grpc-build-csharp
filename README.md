# grpc-build-csharp
dotnet core sdk + grpc dev &amp; runtime


This image is based om [grpc-build-cpp](https://hub.docker.com/r/raisepartner/grpc-build-cpp).

In order to specify the base version, use the `GRPC_BUILD_VERSION` build argument. For example:

```bash
docker build -t raisepartner/grpc-build-csharp:dev --build-arg GRPC_BUILD_VERSION=0.1 .
```

If no `GRPC_BUILD_VERSION` is specified, *latest* is used.
