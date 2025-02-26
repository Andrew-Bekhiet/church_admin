FROM hasura/graphql-engine:v2.45.2

ENV HASURA_GRAPHQL_DEFAULT_NAMING_CONVENTION="graphql-default"
ENV HASURA_GRAPHQL_ENABLE_TELEMETRY="false"
ENV HASURA_GRAPHQL_EXPERIMENTAL_FEATURES="naming_convention"
ENV HASURA_GRAPHQL_LOG_LEVEL="info"
ENV HASURA_GRAPHQL_SERVER_HOST="0.0.0.0"
ENV HASURA_GRAPHQL_SERVER_PORT="${HASURA_GRAPHQL_SERVER_PORT:-8008}"
ENV HASURA_GRAPHQL_EVENTS_FETCH_INTERVAL="3600000"
ENV HASURA_FF_NAMING_CONVENTION_SEP_2023="True"

EXPOSE ${HASURA_GRAPHQL_SERVER_PORT}

# Install PostgreSQL client 17
RUN apt-get update && \
    apt-get install -y curl gnupg lsb-release && \
    curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor -o /usr/share/keyrings/postgresql-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/postgresql-keyring.gpg] http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    apt-get update && \
    apt-get install -y postgresql-client-17 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
