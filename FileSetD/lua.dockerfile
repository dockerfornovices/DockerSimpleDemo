FROM alpine:latest

# Build this image with "docker image build -f lua.dockerfile  --tag luadev ."
# then run with "docker container run --rm -it --name myLuadev luadev"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

# RUN apk add --update lua-dev luarocks expat-dev gcc libc-dev 
RUN apk add --update lua-dev luarocks


RUN ln /usr/bin/luarocks-5.1 /usr/bin/luarocks

# RUN luarocks install luaxmlrpc  mqtt
RUN luarocks install LuaSocket PenLight mqtt

RUN (echo password; echo password) | adduser -h code developer

USER developer:developer

CMD ["/bin/sh", "-i"]
