alter table history.meetings
add column if not exists show_kodas_checkbox boolean not null default false;

alter table history.kodas_history
add column if not exists meeting_id uuid null;

alter table history.kodas_history
drop constraint if exists kodas_history_meeting_id_fkey;

alter table history.kodas_history
add constraint kodas_history_meeting_id_fkey
foreign key (meeting_id) references history.meetings (id)
on update cascade on delete set null;

create index if not exists kodas_history_meeting_id_idx
on history.kodas_history (meeting_id);
