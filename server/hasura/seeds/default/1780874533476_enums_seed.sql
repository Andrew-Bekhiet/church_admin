SET transaction_timeout = 0;
SET check_function_bodies = false;

INSERT INTO auth.permissions (name) VALUES
('approved'),
('manageAllUsers'),
('readAllData'),
('writeAllData'),
('recordAllAttendance'),
('recordAllServantsAttendance'),
('recoverDeleted'),
('deleteData'),
('exportAllData'),
('maintenanceNotifications')
ON CONFLICT DO NOTHING;

INSERT INTO public.work_status (name) VALUES
('student'),
('employed'),
('unemployed'),
('retired')
ON CONFLICT DO NOTHING;

INSERT INTO public.study_years (name, "order") VALUES
('Baby Class 1', -4),
('Baby Class 2', -3),
('Baby Class 3', -2),
('KG 1', -1),
('KG 2', 0),
('أولى ابتدائي', 1),
('ثانية ابتدائي', 2),
('ثالثة ابتدائي', 3),
('رابعة ابتدائي', 4),
('خامسة ابتدائي', 5),
('سادسة ابتدائي', 6),
('أولى إعدادي', 7),
('ثانية إعدادي', 8),
('ثالثة إعدادي', 9),
('أولى ثانوي', 10),
('ثانية ثانوي', 11),
('ثالثة ثانوي', 12),
('أولى جامعة', 13),
('ثانية جامعة', 14),
('ثالثة جامعة', 15),
('رابعة جامعة', 16),
('خامسة جامعة', 17)
ON CONFLICT DO NOTHING;

INSERT INTO public.shammas_levels (name, "order") VALUES
('ابصالتس', 0),
('اغأناغنوستيس', 1),
('أيبودياكون', 2),
('دياكون', 3),
('أرشيدياكون', 4)
ON CONFLICT DO NOTHING;

INSERT INTO public.person_types (
    name, "order", is_family_admin, is_hidden
) VALUES
('أب', 1, true, false),
('أم', 2, true, false),
('ابن', 3, false, false),
('ابنة', 4, false, false),
('جد', 5, false, false),
('جدة', 6, false, false)
ON CONFLICT DO NOTHING;
SELECT pg_catalog.setval('public.person_types_order_seq', coalesce((SELECT max("order") FROM person_types), 0) + 1, false);

INSERT INTO public.martial_statuses (name) VALUES
('married'),
('separated'),
('divorced'),
('widowed'),
('single'),
('widowedWithoutChildren')
ON CONFLICT DO NOTHING;
