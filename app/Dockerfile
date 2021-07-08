FROM cirrusci/flutter AS build

WORKDIR /build

RUN flutter pub global activate dartdoc \
    && flutter pub global activate dhttpd

COPY . .

RUN dartdoc

CMD ["dhttpd", "--path", "doc/api", "--port", "8081"]
