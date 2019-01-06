FROM alpine:latest
ARG LUA_VERSION=5.3

# Build this image with "docker image build -f luaV3.dockerfile --build-arg VERSION=<x.y> --tag luadev3 ."
# then run with "docker container run --rm -it --name myLuadev luadev3"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua${LUA_VERSION}

RUN ln -s /usr/bin/luac${LUA_VERSION} /usr/bin/luac && \
    ln -s /usr/bin/lua${LUA_VERSION} /usr/bin/lua

CMD ["/bin/sh"]
