FROM alpine:3.8

# Build this image with some version of "docker image build -f sqlite3.dockerfile -t alecthegeek/sqlite:0.1 ."
# then run with some version of "docc run --rm -it --mount type=volume,source=db-demo,target=/data alecthegeek/sqlite:0.1 $'create table t1  (c1 varchar(20));'"

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

# Add the data volume mount point
VOLUME [ "/data" ]