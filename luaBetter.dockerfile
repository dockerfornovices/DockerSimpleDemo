FROM alpine:3

# Much content adapted fron https://hub.docker.com/r/abaez/lua/~/dockerfile/

LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with Lua"
# Labels -- see also http://label-schema.org/rc1/
LABEL org.label-schema.description "Simple Lua development environment"
LABEL org.label-schema.name "LuaDev"

ENV LUA_MAJOR_VERSION 5
ENV LUA_MINOR_VERSION 1
ENV LUA_VERSION ${LUA_MAJOR_VERSION}.${LUA_MINOR_VERSION}

# Dependencies. use --update to refresh the package index
RUN apk add --update make tar unzip gcc openssl-dev readline-dev curl libc-dev  ncurses-dev

RUN curl -L http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz | tar xzf - && \
    cd /lua-$LUA_VERSION && \
    make linux test  && \
    make install  && \
    rm -rf /lua-$LUA_VERSION

RUN (echo password; echo password) | adduser -h code developer

# lua env
ENV WITH_LUA /usr/local/
ENV LUA_LIB /usr/local/lib/lua
ENV LUA_INCLUDE /usr/local/include

USER developer
WORKDIR /code

CMD ["/bin/sh"]
