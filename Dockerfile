FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/mobergmann/actions-docker-test

COPY ./target/release/gh-action-test /src/gh-action-test
RUN chmod u+x /src/gh-action-test

WORKDIR /src

CMD "ls -l . && ./gh-action-test"
