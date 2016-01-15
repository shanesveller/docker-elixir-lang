FROM ubuntu:14.04

MAINTAINER Shane Sveller <shane@shanesveller.com>

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -q && \
    apt-get -y install curl locales && \
    locale-gen "en_US.UTF-8" && \
    export LANG=en_US.UTF-8 && \
    curl -o /tmp/erlang.deb http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    dpkg -i /tmp/erlang.deb && \
    rm -rf /tmp/erlang.deb && \
    apt-get update -q && \
    apt-get install -y \
      erlang-base=1:18.2 \
      erlang-crypto=1:18.2 \
      erlang-dev=1:18.2 \
      erlang-eunit=1:18.2 \
      erlang-parsetools=1:18.2 \
      erlang-ssl=1:18.2 \
      erlang-xmerl=1:18.2 \
      elixir=1.2.0-1 && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

ENV LANG=en_US.UTF-8

RUN mix local.hex --force && \
    mix local.rebar --force
