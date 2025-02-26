FROM ghcr.io/railwayapp-templates/timescale-postgis-ssl:pg17-ts2.17

ENV POSTGRES_DB="church_admin"
ENV POSTGRES_USER=${POSTGRES_USER:-"postgres"}
ENV PGDATA=${PGDATA:-"/var/lib/postgresql/data/pgdata"}

COPY ./initdb.d/ /docker-entrypoint-initdb.d/
