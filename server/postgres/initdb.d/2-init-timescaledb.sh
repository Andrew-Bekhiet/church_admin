#!/bin/sh

set -e

# Create the 'template_timescaledb' template db
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE DATABASE template_timescaledb;
	UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template_timescaledb';
EOSQL

# Load TimescaleDB into both template_database and $POSTGRES_DB
for DB in template_timescaledb "$POSTGRES_DB"; do
	echo "Loading TimescaleDB extensions into $DB"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="$DB" <<-EOSQL
		CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;
	EOSQL
done

# Disable telemetry
for DB in template_timescaledb "$POSTGRES_DB"; do
	echo "Disabling TimescaleDB telemetry for $DB"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="$DB" <<-EOSQL
		ALTER SYSTEM SET timescaledb.telemetry_level=off;
	EOSQL
done
