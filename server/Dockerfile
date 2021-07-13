FROM golang:alpine

WORKDIR /server

RUN apk add git gcc libc-dev \
    &&  go get -u -v github.com/cosmtrek/air

COPY . .

CMD ["air"]
