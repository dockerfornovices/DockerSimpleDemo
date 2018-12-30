FROM alpine:latest

# Build this image with "docker image build -f lua.dockerfile  --tag luadev <context>"
# then run with "docker container run --rm -it --name myLuadev luadev"

# Add some meta data -- these are expected minimum
LABEL maintainer  "Alec Clews <alecclews@gmail.com>"
LABEL description "Linux with SQLite DB"

# Add sqlite DB application to the base Alpine image
RUN apk add --no-cache sqlite

WORKDIR /data

# We always want to run sqlite3 command processor
ENTRYPOINT ["/usr/bin/sqlite3", "-echo",  "/data/sqlite.db"]

# Add a default SQLite command
CMD [".schema"]
