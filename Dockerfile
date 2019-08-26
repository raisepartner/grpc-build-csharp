arg GRPC_BUILD_VERSION=latest
from raisepartner/grpc-build-cpp:${GRPC_BUILD_VERSION} as CPP

from mcr.microsoft.com/dotnet/core/sdk:2.2
copy --from=CPP /usr/local/lib/lib*.so.* /usr/local/lib/
copy --from=CPP /usr/local/lib/lib*.so /usr/local/lib/
copy --from=CPP /usr/local/include/* /usr/local/include/
