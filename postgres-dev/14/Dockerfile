FROM postgres:14
ENV PYTHONUNBUFFERED 1

LABEL Name="PostgreSQL" \
      Version="13"

RUN echo 'export HISTFILE=$HOME/.bash_history/history' >> /etc/bash.bashrc

RUN apt-get update && apt-get install --no-install-recommends -y \
  ca-certificates \
  curl \
  gcc \
  libcurl4-openssl-dev \
  libpython3-dev \
  libssl-dev \
  python3-pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir setuptools
COPY ./requirements.txt /tmp/
RUN CRYPTOGRAPHY_DONT_BUILD_RUST=1 pip3 install --no-cache-dir -r /tmp/requirements.txt

RUN mkdir /ansible-common && cd /ansible-common \
  && curl -LsS https://api.github.com/repos/gsong/ansible-common/tarball | tar zx --strip 1
