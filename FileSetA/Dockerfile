ARG GO_VERSION=1.21-alpine
ARG RUNNER_VERSION=3
FROM golang:${GO_VERSION} as builder

WORKDIR /development

COPY main.go .

RUN go mod init main && \
    go mod tidy && \
    go get -u ...  && \
    go build main.go

FROM alpine:${RUNNER_VERSION} as runner

RUN apk add --no-cache libc6-compat curl

COPY --from=builder /development/main .

CMD ["./main"]

# Use "docker container inspect --format '{{.State.Health.Status}}' <ID>"" to check the health status
HEALTHCHECK --interval=1s --timeout=1s --retries=1 \
    CMD ["/bin/sh", "-c", "curl http://127.0.0.1:8000/people || exit 1" ]
