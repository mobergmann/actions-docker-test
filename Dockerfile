FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/mobergmann/actions-docker-test

COPY ./target/release/gh-action-test /src/gh-action-test

WORKDIR /src

RUN pwd
RUN chmod 555 gh-action-test
RUN ls -l .
RUN ls -l gh-action-test

CMD "./gh-action-test"
