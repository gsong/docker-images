ARG VERSION=latest
FROM postgres:$VERSION
ENV PYTHONUNBUFFERED 1

RUN echo 'export HISTFILE=$HOME/.bash_history/history' >> /etc/bash.bashrc
COPY init-shadow-db.sh /docker-entrypoint-initdb.d/
COPY create-shadow-db.sh /usr/local/bin/
