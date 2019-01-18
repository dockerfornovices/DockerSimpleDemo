FROM alpine:latest

#Build this image with "docker image build -f lua.dockerfile  --tag luadev2 ."
#then run with "docker container run --rm -it --name myLuadev luadev"

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"

RUN apk add --no-cache lua5.1 lua5.2 lua5.3

COPY lua.profile /root/.profile

CMD ["/bin/sh", "-l"]
