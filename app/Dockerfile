FROM cirrusci/flutter

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 2c249cc (disable dartdoc from docker-compose)
WORKDIR /app

RUN flutter pub global activate dartdoc \
    && flutter pub global activate dhttpd 

COPY . . 

RUN flutter pub get \
    && dartdoc    

COPY . .     

CMD ["pub", "global", "run", "dhttpd","--path", "app/doc/api", "--port", "8081"]
=======
WORKDIR /docs/app

RUN pub global activate dartdoc \
    && pub global activate dhttpd \
    && dartdoc \

<<<<<<< HEAD
CMD ["dhttpd", "--path", "doc/api", "--port", "8081"]
>>>>>>> 10f6190 (resolve merge conflict in docker-compose-dev)
=======
COPY . .

RUN flutter pub get \
    && dartdoc

COPY . .

CMD ["pub", "global", "run", "dhttpd","--path", "app/doc/api", "--port", "8081"]
>>>>>>> 2c249cc (disable dartdoc from docker-compose)
