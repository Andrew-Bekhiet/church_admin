FROM timescale/timescaledb-ha:pg17

USER root
RUN rm /docker-entrypoint-initdb.d/000_install_timescaledb.sh /docker-entrypoint-initdb.d/001_timescaledb_tune.sh /docker-entrypoint-initdb.d/010_install_timescaledb_toolkit.sh
USER postgres

ENV POSTGRES_DB="church_admin"
ENV POSTGRES_USER=${POSTGRES_USER:-"postgres"}
ENV PGDATA=${PGDATA:-"/var/lib/postgresql/data/pgdata"}

COPY ./initdb.d/ /docker-entrypoint-initdb.d/
COPY --chown=postgres:postgres ./postgresql.conf /etc/postgresql/postgresql.conf

CMD [ "-c", "config_file=/etc/postgresql/postgresql.conf" ]
