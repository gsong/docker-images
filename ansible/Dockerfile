FROM alpine:edge
ENV PYTHONUNBUFFERED 1

ARG REBUILD=0
RUN apk add --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  ansible \
  bash \
  bash-completion \
  curl \
  keychain \
  make \
  openssh-client \
  py-curl

COPY ./requirements.txt /tmp/
RUN apk add --update --no-cache \
    gcc \
    musl-dev \
    openssl-dev \
    py-pip \
    python2-dev \
  && pip install --no-cache-dir -r /tmp/requirements.txt \
  && apk del \
    gcc \
    musl-dev \
    openssl-dev \
    py-pip \
    python2-dev

RUN echo $'source /usr/share/bash-completion/bash_completion\n\
export HISTFILE=$HOME/.bash_history/history\n\
PS1=\'\u:\w\$ \''\
>> /etc/bash.bashrc

WORKDIR /app

ARG CACHE_BUST=0
RUN mkdir /ansible-common && cd /ansible-common \
  && curl -LsS https://api.github.com/repos/gsong/ansible-common/tarball | tar zx --strip 1
