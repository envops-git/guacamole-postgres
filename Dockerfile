FROM postgres:12

ENV POSTGRES_USER postgres

WORKDIR /main/

COPY . .

# COPY pg_backup.bak /docker-entrypoint-initdb.d

# COPY psql_init.sh /docker-entrypoint-initdb.d

RUN su - postgres