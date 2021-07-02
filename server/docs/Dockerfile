FROM golang:alpine

WORKDIR /docs

RUN go get golang.org/x/tools/cmd/godoc

COPY . .

CMD ["godoc", "-http=:8080"]