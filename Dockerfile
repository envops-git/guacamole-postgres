FROM postgres:12

ENV POSTGRES_USER postgres

ENV POSTGRES_DB postgres

COPY psql_init.sh /docker-entrypoint-initdb.d

COPY pg_backup.bak /docker-entrypoint-initdb.d