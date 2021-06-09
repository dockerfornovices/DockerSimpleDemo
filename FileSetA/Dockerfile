ARG GO_VERSION=1.14
ARG RUNNER_VERSION=3.11
FROM golang:${GO_VERSION} as builder

WORKDIR /development

COPY main.go .

RUN go mod init github.com/dockerfornovices/DockerSimpleDemo/blob/main/FileSetA && \
    go get -u ...  && \
    go build main.go

FROM alpine:${RUNNER_VERSION} as runner

RUN apk add --no-cache libc6-compat curl

COPY --from=builder /development/main .

CMD ["./main"]

EXPOSE 8000

# Use "docker container inspect --format '{{.State.Health.Status}}' <ID>"" to check the health status
HEALTHCHECK --interval=1s --timeout=1s --retries=1 \
    CMD ["/bin/sh", "-c", "curl http://127.0.0.1:8000/people || exit 1" ]
