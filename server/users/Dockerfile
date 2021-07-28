FROM golang:alpine

ENTRYPOINT [ "/bin/sh", "-l", "-c" ]

RUN ls

CMD ["/bin/users"]

WORKDIR /server/users

RUN apk add git gcc libc-dev \
    && apk add build-base

COPY . .

RUN chmod 777 run-prod.sh

CMD ["sh run-prod.sh"]



