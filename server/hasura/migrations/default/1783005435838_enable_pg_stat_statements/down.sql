DROP EXTENSION IF EXISTS pg_stat_statements;
ALTER SYSTEM SET shared_preload_libraries = 'timescaledb';
SELECT pg_reload_conf();
