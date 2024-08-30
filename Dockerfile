FROM golang:1.20-alpine

WORKDIR /app

COPY main.go .

RUN go build -o hello-world main.go

CMD ["./hello-world"]
