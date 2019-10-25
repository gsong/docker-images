FROM postgres:11.4

LABEL Name="PostgreSQL" \
      Version="11"

COPY postgres_extensions.sql /docker-entrypoint-initdb.d
