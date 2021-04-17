FROM alpine:3

ARG LUA_VERSION=5.3
ENV LUA_VERSION_ENV=${LUA_VERSION}

#Build this image with 'docker image build --tag lua-dev-f:5.1 --build-arg "LUA_VERSION=5.1" -f FileSetF/lua.dockerfile FileSetF'
#then run with "docker container run --rm -it --name myLuadev lua-dev"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua, Versions 5.1, 5.3 and 5.3"

RUN apk add --no-cache lua5.1 lua5.2 lua5.3

# Setup up file will configure the correct version of Lua
COPY lua.setup.sh /lua.setup.sh
ENV ENV /lua.setup.sh
RUN chmod 755 /lua.setup.sh

ENTRYPOINT ["/bin/sh"]

# Add a volume to hold the development code
VOLUME ["/code"]

# Make the code directory the default on startup
WORKDIR "/code"
