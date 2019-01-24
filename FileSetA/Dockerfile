FROM golang:1.11.5 as builder

WORKDIR /development

COPY main.go .

RUN go mod init github.com/HakaseLabs/source-blog/blob/master/rest-api/main.go && \
    go get -u ...  && \
    go build main.go

FROM alpine:3.8 as runner

RUN apk add --no-cache libc6-compat curl

COPY --from=builder /development/main .

CMD ["./main"]

EXPOSE 8000

# Use "docc inspect --format '{{.State.Health.Status}}' <ID>"" to check the health status
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=1 \
    CMD ["/bin/sh", "-c", "curl http://127.0.0.1:8000/people || exit 1" ]
