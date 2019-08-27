# grpc-build-csharp
dotnet core sdk + grpc dev &amp; runtime


This image is based om [grpc-build-cpp](https://hub.docker.com/r/raisepartner/grpc-build-cpp).

In order to specify the base version, use the `GRPC_BUILD_VERSION` build argument. For example:

```bash
docker build -t raisepartner/grpc-build-csharp:dev --build-arg GRPC_BUILD_VERSION=0.1 .
```

If no `GRPC_BUILD_VERSION` is specified, *latest* is used.


### using a private nuget sources

example:

```bash
nuget sources add \
  -name nuget-private \
  -source https://nexus.raisepartner.com/repository/nuget-private/ \
  -username <USER> \
  -password <PASSWORD> \
  -storepasswordincleartext \
  -ConfigFile ~/.nuget/NuGet/NuGet.Config
```

This snippet can be added to the build/CI script.
