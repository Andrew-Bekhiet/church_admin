FROM timescale/timescaledb-ha:pg17

ENV POSTGRES_DB="church_admin"
ENV POSTGRES_USER=${POSTGRES_USER:-"postgres"}
ENV PGDATA=${PGDATA:-"/var/lib/postgresql/data/pgdata"}

COPY ./initdb.d/ /docker-entrypoint-initdb.d/
COPY --chown=postgres:postgres ./postgresql.conf /etc/postgresql/postgresql.conf

CMD [ "-c", "config_file=/etc/postgresql/postgresql.conf" ]
