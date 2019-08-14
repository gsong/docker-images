FROM python:2.7.17
ENV PYTHONUNBUFFERED 1

LABEL Name="Python" \
      Version="2"

RUN pip install --no-cache-dir -U pip setuptools wheel && rm -rf /root/.cache/pip
