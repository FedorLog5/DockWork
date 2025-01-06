FROM golang:1.22.0

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go tracker.db ./

RUN  go build -o /practic_app

CMD ["/practic_app"]

