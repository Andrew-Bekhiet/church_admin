FROM hasura/graphql-engine:v2.49.1

# Install PostgreSQL client 17
RUN apt-get update && apt-get install -y curl gnupg lsb-release

RUN curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor -o /usr/share/keyrings/postgresql-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/postgresql-keyring.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN curl -s https://packagecloud.io/install/repositories/timescale/timescaledb/script.deb.sh | bash

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y postgresql-client-17 postgresql-17-postgis-3 postgresql-contrib postgresql-17-postgis-3-scripts && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
