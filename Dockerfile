FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/mobergmann/actions-docker-test

COPY ./target/release/gh-action-test /src/gh-action-test

WORKDIR /src

RUN apt-get update -y
RUN apt-get install tree -y
RUN tree .

CMD "./gh-action-test"
