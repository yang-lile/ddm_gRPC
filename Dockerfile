FROM google/dart:2.12-beta

WORKDIR /app

ENV PUB_HOSTED_URL="https://mirrors.tuna.tsinghua.edu.cn/dart-pub"
ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline

CMD [  ]

ENTRYPOINT ["/usr/bin/dart", "/app/bin/server.dart"]