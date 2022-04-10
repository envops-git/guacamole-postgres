#!/bin/bash
set -e

echo """
CREATE ROLE postgres WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD    'postgres';
""" | psql

psql -f pg_backup.bak kong