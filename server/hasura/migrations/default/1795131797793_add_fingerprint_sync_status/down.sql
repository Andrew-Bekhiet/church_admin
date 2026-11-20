do $$
begin
  if exists (select 1 from operations.fingerprint_sync_status) then
    raise exception 'Cannot roll back: a fingerprint sync has been recorded';
  end if;
end $$;

drop table if exists operations.fingerprint_sync_status;
