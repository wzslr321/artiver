FROM cirrusci/flutter

WORKDIR /app

RUN flutter pub global activate dartdoc \
    && flutter pub global activate dhttpd 

COPY . . 

RUN flutter pub get \
    && dartdoc    

COPY . .     

CMD ["pub", "global", "run", "dhttpd","--path", "app/doc/api", "--port", "8081"]
