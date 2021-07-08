FROM golang:alpine

WORKDIR /server

RUN apk add git gcc libc-dev \
    &&  go get -u -v github.com/cosmtrek/air \
    && apk add build-base

COPY . .

<<<<<<< HEAD
CMD ["air"]
=======

CMD ["air", "-d"]
>>>>>>> 638efce (.md files clarifications, docker configuration cleanup)
