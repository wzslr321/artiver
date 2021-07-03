FROM golang:alpine

WORKDIR /docs/server

RUN go get golang.org/x/tools/cmd/godoc

COPY . .

CMD ["godoc", "-http=:8080"]