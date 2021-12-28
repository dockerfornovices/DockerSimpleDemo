FROM alpine:latest

RUN  apk add --update-cache figlet && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/figlet"]
