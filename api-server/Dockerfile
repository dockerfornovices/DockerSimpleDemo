FROM golang:1.11.2 as builder

WORKDIR /development

COPY main.go .

RUN go mod init github.com/HakaseLabs/source-blog/blob/master/rest-api/main.go && \
    go get -u ...  && \
    go build main.go

FROM alpine as runner

RUN apk add --no-cache libc6-compat

COPY --from=builder /development/main .

CMD ["./main"]

EXPOSE 8000
