FROM alpine:latest
ARG LUA_PROD=5.2
ARG LUA_VERSION=${LUA_PROD}

ENV LUA_VERSION=${LUA_VERSION}

# Build this image with "docker image build -f luaV2.dockerfile  --tag luadev ."
# then run with "docker container run --rm -it --name myLuadev luadev"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua5.1 lua5.2 lua5.3

COPY lua.profile /root/.profile

CMD ["/bin/sh", "-l"]
