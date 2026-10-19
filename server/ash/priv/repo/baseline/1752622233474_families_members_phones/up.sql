create or replace view families_admins_phones as SELECT p.family_id,
    json_object_agg(pt."name", p.main_phone ORDER BY pt.is_family_admin DESC, pt.order) AS aggregated_phones
FROM persons p
JOIN person_types pt ON p.person_type_id = pt.id
where pt.is_family_admin is true and p.main_phone is not null and p.main_phone <> ''
GROUP BY p.family_id
ORDER BY COUNT(p.main_phone) DESC;
