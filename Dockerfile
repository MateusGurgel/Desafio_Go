FROM golang:1.20-alpine AS builder

WORKDIR /app

COPY . .

RUN go build -o hello-world main.go

FROM scratch

COPY --from=builder /app/hello-world /hello-world

ENTRYPOINT ["/hello-world"]
