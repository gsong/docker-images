FROM alpine:edge
ENV PYTHONUNBUFFERED 1

RUN echo $'source /usr/share/bash-completion/bash_completion\n\
export HISTFILE=$HOME/.bash_history/history\n\
PS1=\'\u:\w\$ \''\
>> /etc/bash.bashrc

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

# Workaround for Ansible linode module bug
# See https://github.com/ansible/ansible/pull/23874 for more info
RUN apk add --update --no-cache \
    gcc \
    git \
    musl-dev \
    py-pip \
    python2-dev \
  && pip install --no-cache-dir git+https://github.com/ansible/ansible.git@devel \
  && apk del \
    gcc \
    git \
    musl-dev \
    py-pip \
    python2-dev

RUN mkdir /ansible-common && cd /ansible-common \
  && curl -LsS https://api.github.com/repos/gsong/ansible-common/tarball | tar zx --strip 1

WORKDIR /app
