#!/bin/bash
set -e

export PGUSER=postgres
psql <<- EOSQL
    CREATE USER postgres;
    GRANT ALL PRIVILEGES ON TO docker;
EOSQL

psql -f pg_backup.bak postgres