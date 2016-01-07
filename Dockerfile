FROM gliderlabs/alpine:3.3

MAINTAINER Shane Sveller <shane@shanesveller.com>

RUN apk-install \
    elixir \
    erlang-crypto \
    erlang-dev \
    erlang-eunit \
    erlang-parsetools \
    erlang-syntax-tools \
    erlang-xmerl

RUN mix local.hex --force && \
    mix local.rebar --force

RUN apk-install \
    nodejs \
    postgresql-client

RUN apk-install \
    g++ \
    gcc \
    make

ENV LANG=en_US.UTF-8
WORKDIR /usr/src/app
