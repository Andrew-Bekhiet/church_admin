create table if not exists operations.fingerprint_sync_status (
    is_the_single_row boolean primary key default true,
    last_synced_at timestamptz not null,
    constraint fingerprint_sync_status_holds_a_single_row_check check (is_the_single_row)
);
