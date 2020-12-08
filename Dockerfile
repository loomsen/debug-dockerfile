FROM alpine:edge

RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git bash bash-completion ncurses vim jq \
    # network
    bind-tools curl net-tools mtr \
    # certificates
    ca-certificates openssl \
    # processes/io
    strace tree \
    # kubernetes
    kubectl \
    # databases
    mysql-client postgresql-client


ENTRYPOINT bash