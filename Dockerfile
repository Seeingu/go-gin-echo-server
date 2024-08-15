FROM golang:1.22 AS builder

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o echo-service .

FROM scratch

COPY --from=builder /app/echo-service /echo-service

EXPOSE 8080

CMD ["/echo-service"]