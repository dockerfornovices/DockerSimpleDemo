FROM alpine:3.8

#Read the install bersion from --build-arg options default to 5.3
ARG LUA_VERSION=5.3

#Build this image with "docker image build -f lua.dockerfile --build-arg VERSION=<x.y> --tag luadev:<x.y> ."
#then run with "docker container run --rm -it --name myLuadev luadev:<x.y"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua${LUA_VERSION}

RUN ln -s /usr/bin/luac${LUA_VERSION} /usr/bin/luac && \
    ln -s /usr/bin/lua${LUA_VERSION} /usr/bin/lua

# Add a volume to hold the development code
VOLUME ["/code"]

# Inherit CMD from parent image
 