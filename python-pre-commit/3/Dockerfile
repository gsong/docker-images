FROM python:3
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -U pip setuptools wheel -r /tmp/requirements.txt && rm -rf /root/.cache/pip
