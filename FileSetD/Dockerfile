FROM alpine:3

#Build this image with "docker image build -f lua.dockerfile  --tag lua-dev ."
#then run with "docker container run --rm -it --name myLuadev lua-dev"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua, Versions 5.1, 5.3 and 5.3"

RUN apk add --no-cache lua5.1 lua5.2 lua5.3

# Setup up file will configure the correct version of Lua
COPY lua.setup.sh /lua.setup.sh
ENV ENV /lua.setup.sh
RUN chmod 755 /lua.setup.sh

# Default starup command
CMD ["/bin/sh"]

# Add a volume to hold the development code
VOLUME ["/code"]

# Make the code directory the default on startup
WORKDIR "/code"
