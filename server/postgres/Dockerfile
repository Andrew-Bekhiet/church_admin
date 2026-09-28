FROM timescale/timescaledb-ha:pg17 AS base

ENV POSTGRES_DB="church_admin"
ENV POSTGRES_USER=${POSTGRES_USER:-"postgres"}
ENV PGDATA=${PGDATA:-"/var/lib/postgresql/data/pgdata"}

COPY ./initdb.d/ /docker-entrypoint-initdb.d/
COPY --chown=postgres:postgres ./postgresql.conf /etc/postgresql/postgresql.conf

CMD [ "-c", "config_file=/etc/postgresql/postgresql.conf" ]

FROM base AS test

USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends libtap-parser-sourcehandler-pgtap-perl \
    && rm -rf /var/lib/apt/lists/*
USER postgres

FROM base AS final
