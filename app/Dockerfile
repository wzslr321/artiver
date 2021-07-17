
FROM cirrusci/flutter

WORKDIR /app

COPY pubspec.yaml pubspec.yaml
RUN flutter pub get

RUN flutter pub global activate dartdoc \
    && flutter pub global activate dhttpd

COPY lib/ lib/
COPY .dart_tool/flutter_gen/ .dart_tool/flutter_gen/

RUN flutter pub get --offline && dartdoc

CMD ["/root/.pub-cache/bin/dhttpd","--path", "/app/doc/api", "--port", "8081", "--host", "0.0.0.0"]