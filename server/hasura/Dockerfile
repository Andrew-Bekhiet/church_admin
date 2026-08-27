FROM hasura/graphql-engine:v2.50.1.cli-migrations-v3

# Install PostgreSQL client 17
RUN apt-get update && apt-get install -y curl gnupg lsb-release

RUN curl -s https://packagecloud.io/install/repositories/timescale/timescaledb/script.deb.sh | bash

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y postgresql-client-17 postgresql-17-postgis-3 postgresql-contrib postgresql-17-postgis-3-scripts && \
    apt-get purge -y postgresql-client-18 && \
    apt-get install -y --reinstall postgresql-client-common && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./migrations /hasura-migrations
COPY ./metadata /hasura-metadata
