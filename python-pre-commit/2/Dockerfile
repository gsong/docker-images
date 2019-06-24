FROM python:2.7.15
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -U pip setuptools wheel -r /tmp/requirements.txt && rm -rf /root/.cache/pip
