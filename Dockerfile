FROM golang:1.22-alpine AS builder
RUN apk add --no-cache curl bash
WORKDIR /app
COPY go.mod ./
COPY . .
RUN go build -o bin/vuln-ping .

FROM alpine:3.14
RUN apk add --no-cache curl
WORKDIR /app
COPY --from=builder ["/app/bin/vuln-ping", "."]
ENTRYPOINT /app/vuln-ping
