FROM golang:1.18-alpine3.15

WORKDIR /build/
COPY . .
RUN apk add build-base
RUN GOOS=linux
RUN go build -o app .

RUN addgroup -S  --gid 1005 paymentgroup && adduser --uid 1005 -S paymentuser -G paymentgroup  && chown -R paymentuser:paymentgroup  /build

ENTRYPOINT ["./app"]
