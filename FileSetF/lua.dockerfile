FROM alpine:3

#Build this image with "docker image build -f lua.dockerfile  --tag luadev2 ."
#then run with "docker container run --rm -it --name myLuadev luadev"

# Default version if no version at buildtime
ARG LUA_VERSION=5.3

# Export the default version into the container at run time
ENV DEFAULT_LUA_VERSION=${LUA_VERSION}

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua5.1 lua5.2 lua5.3

ENV ENV=/opt/.env

COPY lua.profile /opt/.env

ENTRYPOINT ["/bin/sh"] 

# Add a volume to hold the development code
VOLUME ["/code"]

#make thde code directory the default on startup
WORKDIR "/code"