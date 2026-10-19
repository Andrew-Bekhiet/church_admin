ALTER TRIGGER check_person_insertion ON public.persons RENAME TO check_person_insertion_permission;
ALTER TRIGGER persons_general_check ON public.persons RENAME TO persons_container_check;
