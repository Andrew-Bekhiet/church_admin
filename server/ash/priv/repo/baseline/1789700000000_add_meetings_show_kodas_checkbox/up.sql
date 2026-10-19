alter table history.meetings
add column if not exists show_kodas_checkbox boolean not null default true;
