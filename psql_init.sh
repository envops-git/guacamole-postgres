#!/bin/bash
set -e

psql -c echo " CREATE ROLE postgres WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD 'postgres';" 

psql -f pg_backup.bak kong