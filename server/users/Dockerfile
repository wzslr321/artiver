FROM golang:alpine

ENTRYPOINT [ "/bin/sh", "-l", "-c" ]

CMD ["/bin/users"]

WORKDIR /server/users

RUN apk add make

COPY . .

RUN chmod 777 run-prod.sh

CMD ["sh run-prod.sh"]



