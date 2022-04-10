FROM postgres:12

ENV POSTGRES_USER postgres

ENV POSTGRES_DB postgres

COPY initdb.sql /docker-entrypoint-initdb.d