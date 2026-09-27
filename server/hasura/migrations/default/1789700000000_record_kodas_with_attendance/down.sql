do $$
begin
  if exists (select 1 from history.kodas_history where meeting_id is not null) then
    raise exception 'Cannot roll back: % kodas record(s) were recorded from a meeting', (select count(*) from history.kodas_history where meeting_id is not null);
  end if;
end $$;

drop index if exists history.kodas_history_meeting_id_idx;

alter table history.kodas_history
drop constraint if exists kodas_history_meeting_id_fkey;

alter table history.kodas_history
drop column if exists meeting_id;

alter table history.meetings
drop column if exists show_kodas_checkbox;
