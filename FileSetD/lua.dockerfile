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

# Create a user account inside the container
RUN (echo password; echo password) | adduser -h code developer

# make the new user the default user when the container start
USER developer:developer

# Add in the 

CMD ["/bin/sh", "-i"]
