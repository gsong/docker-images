ARG VERSION=latest
FROM postgres:$VERSION
ENV PYTHONUNBUFFERED 1

HEALTHCHECK --interval=5s --timeout=5s --start-period=30s \
  CMD pg_isready

RUN echo 'export HISTFILE=$HOME/.bash_history/history' >> /etc/bash.bashrc
COPY init-shadow-db.sh /docker-entrypoint-initdb.d/
