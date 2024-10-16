FROM golang:1.22.0

WORKDIR /app

##COPY go.mod go.sum ./
COPY . ./

RUN go mod download

RUN go build -o /main

CMD ["/main"]
