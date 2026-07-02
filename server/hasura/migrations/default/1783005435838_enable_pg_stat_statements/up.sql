CREATE EXTENSION IF NOT EXISTS pg_stat_statements;
ALTER SYSTEM SET shared_preload_libraries = 'pg_stat_statements,timescaledb';
ALTER SYSTEM SET pg_stat_statements.track_planning = on;
SELECT pg_reload_conf();
