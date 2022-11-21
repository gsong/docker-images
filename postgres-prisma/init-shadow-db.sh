#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<- EOSQL
  SELECT 'CREATE DATABASE ${SHADOW_DB}' WHERE NOT EXISTS
    (SELECT FROM pg_database WHERE datname = '${SHADOW_DB}')\gexec
	GRANT ALL PRIVILEGES ON DATABASE ${SHADOW_DB} TO ${POSTGRES_USER};
EOSQL
