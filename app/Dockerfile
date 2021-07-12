FROM cirrusci/flutter

WORKDIR /docs/app

RUN flutter pub global activate dartdoc \
    && flutter pub global activate dhttpd

COPY . .
