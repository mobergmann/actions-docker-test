FROM ubuntu:latest

LABEL org.opencontainers.image.source=https://github.com/mobergmann/actions-docker-test

COPY ./target/release/gh-action-test /src/gh-action-test

WORKDIR /src

RUN apt-get update -y
RUN apt-get install tree -y
RUN pwd
RUN tree .
RUN ls -l .
RUN ls -l gh-action-test
RUN ls -ld gh-action-test
#RUN chmod 555 gh-action-test

CMD "./gh-action-test"
