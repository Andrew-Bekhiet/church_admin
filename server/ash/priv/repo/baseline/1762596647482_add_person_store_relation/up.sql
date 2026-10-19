alter table public.persons add foreign key (store_id) references public.stores on update restrict on delete set null deferrable initially deferred;
