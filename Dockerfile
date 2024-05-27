FROM golang:1.22-alpine AS builder
RUN apk add --no-cache curl bash
WORKDIR /app
COPY go.mod ./
COPY . .
RUN go build -o bin/vuln-fileupload .

FROM alpine:3.14
RUN apk add --no-cache curl bash file
WORKDIR /app
COPY --from=builder ["/app/bin/vuln-fileupload", "."]
COPY --from=builder ["/app/upload.html", "."]
ENTRYPOINT /app/vuln-fileupload
