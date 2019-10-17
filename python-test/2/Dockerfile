FROM python:2.7.15
ENV PYTHONUNBUFFERED 1

LABEL Name="Veelo Python Test" \
      Version="1.0"

RUN apt-get update && apt-get install --no-install-recommends -y \
  libmemcached-dev \
  libxmlsec1-dev \
  pdftk \
  postgresql-client \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -U \
  pip \
  setuptools \
  wheel \
  && rm -rf /root/.cache/pip
