FROM google/dart

WORKDIR /docs/app

RUN pub global activate dartdoc \
    && pub global activate dhttpd \
    && dartdoc \

CMD ["dhttpd", "--path", "doc/api", "--port", "8081"]
