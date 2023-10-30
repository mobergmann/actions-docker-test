# syntax=docker/Dockerfile:1.2
FROM ubuntu:latest

COPY ./target/release/gh-action-test /src/gh-action-test

WORKDIR /src

CMD "./gh-action-test"
