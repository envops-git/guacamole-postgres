#!/bin/bash
set -e

echo """
CREATE ROLE postgres WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD    'postgres';
""" | psql -c

psql -f pg_backup.bak kong