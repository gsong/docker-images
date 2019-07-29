FROM python:2.7.15
ENV PYTHONUNBUFFERED 1

RUN pip install --no-cache-dir -U pip setuptools wheel && rm -rf /root/.cache/pip
RUN apt-get update && apt-get install --no-install-recommends -y \
  default-jre-headless \
  libmemcached-dev \
  libxmlsec1-dev \
  lsof \
  pdftk \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*
