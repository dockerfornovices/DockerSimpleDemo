# Start with an up to date version of Alpine. Be sepecific with the versiont tag
FROM alpine:3.8

# Build this image with "docker image build -f lua.dockerfile  --tag luadev <context>"
# then run with "docker container run --rm -it --name myLuadev luadev"

# Add some meta data -- these are expected minimum for every image.
LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

# Add content to the base Alpine image
RUN apk add --no-cache lua

# Add a coding directory for Bind Mount
WORKDIR /code
# Add a volume to hold the development code
VOLUME /code

# Default startup command from base image
