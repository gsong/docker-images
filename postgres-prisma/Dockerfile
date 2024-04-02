ARG VERSION=latest
FROM postgres:$VERSION-alpine
ENV PYTHONUNBUFFERED 1

HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --start-interval=5s \
  CMD pg_isready -U ${POSTGRES_USER}

RUN echo 'export HISTFILE=$HOME/.bash_history/history' >> /etc/bash.bashrc
COPY init-shadow-db.sh /docker-entrypoint-initdb.d/
