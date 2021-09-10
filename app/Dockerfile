FROM cirrusci/flutter:dev AS build

WORKDIR /build

RUN  flutter config --enable-web \
    && sudo apt-get update \
    && sudo apt-get install -y chromium-browser \
    && sudo rm -rf /var/lib/apt/lists/* \
    && flutter pub get

COPY . .

CMD ["flutter","run", "-d", "web-server", "--web-port 8000 --web-hostname 0.0.0.0"]