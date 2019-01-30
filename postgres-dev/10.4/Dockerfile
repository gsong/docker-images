FROM postgres:10.4
ENV PYTHONUNBUFFERED 1

RUN echo 'export HISTFILE=$HOME/.bash_history/history' >> /etc/bash.bashrc

RUN apt-get update && apt-get install --no-install-recommends -y \
  ca-certificates \
  curl \
  gcc \
  libcurl4-openssl-dev \
  libssl-dev \
  python-dev \
  python-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip install -U pip
RUN pip install --no-cache-dir setuptools wheel
COPY ./requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

RUN mkdir /ansible-common && cd /ansible-common \
  && curl -LsS https://api.github.com/repos/gsong/ansible-common/tarball | tar zx --strip 1
