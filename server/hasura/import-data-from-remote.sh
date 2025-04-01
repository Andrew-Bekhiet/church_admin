#!/bin/bash
# filepath: migrate_pg_data.sh

# Exit immediately if any command fails
set -e

# Configuration variables - replace with your actual values
REMOTE_HOST="${REMOTE_HOST}"
REMOTE_PORT="5432"
REMOTE_DB="church_admin"
REMOTE_USER="postgres"
REMOTE_PASSWORD="${REMOTE_PASSWORD}"

LOCAL_HOST="localhost"
LOCAL_PORT="5432"
LOCAL_DB="church_admin"
LOCAL_USER="postgres"
LOCAL_PASSWORD="${LOCAL_PASSWORD}"

# Create a temporary dump file
DUMP_FILE="pg_data_dump_$(date +%Y%m%d_%H%M%S).sql"

echo "Starting data migration from $REMOTE_DB to $LOCAL_DB..."

# Export environment variables for passwords
export PGPASSWORD="$REMOTE_PASSWORD"

echo "Dumping data from remote database (public schema only)..."
pg_dump --host=$REMOTE_HOST --port=$REMOTE_PORT --username=$REMOTE_USER \
  --format=custom --data-only --schema=public \
  --exclude-table=public.spatial_ref_sys \
  --no-owner --no-privileges $REMOTE_DB > $DUMP_FILE

# Change password for local connection
export PGPASSWORD="$LOCAL_PASSWORD"

echo "Importing data to local database..."
pg_restore --host=$LOCAL_HOST --port=$LOCAL_PORT --username=$LOCAL_USER \
  --dbname=$LOCAL_DB --data-only --schema=public \
  --disable-triggers --no-owner --no-privileges $DUMP_FILE

echo "Cleaning up temporary files..."
rm $DUMP_FILE

echo "Migration completed successfully!"
