FROM golang:1.18-alpine3.15

WORKDIR /build/
COPY . .
RUN apk add build-base
RUN GOOS=linux
RUN go build -o app .

RUN addgroup -S  --gid 1000 invoicegroup && adduser --uid 1000 -S invoiceuser -G invoicegroup  && chown -R invoiceuser:invoicegroup  /build

ENTRYPOINT ["./app"]

