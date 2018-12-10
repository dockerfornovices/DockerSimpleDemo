FROM alpine:latest

# Build this image with "docker image build -f lua.dockerfile  --tag luadev <context>"
# then run with "docker container run --rm -it --name myLuadev luadev"

# Add some meta data -- these are expected minimum
LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

# Add content to the base Alpine image
RUN apk add --no-cache lua

# Add a coding directory for Bind Mount
WORKDIR /code

# Add a default startup command
CMD ["/bin/sh"]
