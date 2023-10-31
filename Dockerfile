FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/mobergmann/actions-docker-test

COPY ./target/release/gh-action-test /src/gh-action-test

WORKDIR /src

RUN chmod 555 gh-action-test

CMD "./gh-action-test"
