create or replace view public.classes_persons as
 select c.id as class_id,
    p.id as person_id,
    p.family_id
   from classes c
     join persons_services ps on ps.service_id = c.service_id
     join persons p on p.id = ps.person_id
       and c.service_study_year = p.study_year_id
       and (c.service_gender is null or c.service_gender = p.gender);
