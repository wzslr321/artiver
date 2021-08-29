FROM golang:alpine


WORKDIR /go/src/users

RUN go get golang.org/x/tools/cmd/godoc

COPY . .

CMD ["godoc", "-http=:8082"]
