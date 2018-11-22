# syntax = docker/dockerfile:experimental

FROM bitwalker/alpine-elixir:1.7.4 as builder

RUN apk update && apk --no-cache add make git openssh-client && rm -rf /var/cache/apk/*

RUN mkdir -p -m 0600 /root/.ssh

RUN ssh-keyscan -v github.com > /root/.ssh/known_hosts

RUN --mount=type=ssh git clone git@github.com:bryanhuntesl/poc_docker_ssh.git
