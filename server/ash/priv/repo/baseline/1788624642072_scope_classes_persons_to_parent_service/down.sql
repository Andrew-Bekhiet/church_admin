create or replace view public.classes_persons as
 select c.id as class_id,
    p.id as person_id,
    p.family_id
   from classes c
     join persons p on c.service_study_year = p.study_year_id
       and (c.service_gender is null or c.service_gender = p.gender);
