FROM alpine:3

#Read the install version from --build-arg options. Default to 5.3
ARG LUA_VERSION=5.3

#Build this image with "docker image build -f lua.dockerfile --build-arg VERSION=<x.y> --tag luadev:<x.y> ."
#then run with "docker container run --rm -it --name myLuadev luadev:<x.y>"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua${LUA_VERSION}

# Different versions of Lua don't always link a default version :-(
RUN [ -h /usr/bin/luac ] && rm /usr/bin/luac ; ln -s /usr/bin/luac${LUA_VERSION} /usr/bin/luac && \
    [ -h /usr/bin/lua  ] && rm /usr/bin/lua  ; ln -s /usr/bin/lua${LUA_VERSION} /usr/bin/lua

# Add a volume to hold the development code
VOLUME ["/code"]

WORKDIR "/code"

# Inherit CMD from parent image
