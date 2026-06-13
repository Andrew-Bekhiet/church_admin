\restrict T2aR9AxzTQKuuRRvCAJkXgCxWdKVhW3L
SET transaction_timeout = 0;
SET check_function_bodies = false;

INSERT INTO auth.permissions (name) VALUES
('approved'),
('manageAllUsers'),
('readAllData'),
('writeAllData'),
('recordHistory'),
('changeOldHistory'),
('recoverDeleted'),
('deleteData'),
('exportAllData');

INSERT INTO public.work_status (name) VALUES
('student'),
('employed'),
('unemployed'),
('retired');

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
('خامسة جامعة', 17);

INSERT INTO public.shammas_levels (id, name, "order") VALUES
('be53fd46-8e9a-5637-a025-ec744c7bcfef', 'ابصالتس', 0),
('5f645c57-9752-5c2a-9eee-029fcaf20d28', 'اغأناغنوستيس', 1),
('47ed2ce7-5139-54b4-804e-0c630aeb51b3', 'أيبودياكون', 2),
('3838d987-9e00-5228-98cb-6fdef1ecdc7c', 'دياكون', 3),
('3219c203-a439-5274-b08d-9f76c340326a', 'أرشيدياكون', 4);

INSERT INTO public.person_types (id, name, "order", is_family_admin, is_hidden) VALUES
('47030d3f-72f0-5be9-82c3-f3e6e61fae24', 'أب', 1, true, false),
('02686e30-195c-58c5-a226-8de805726050', 'أم', 2, true, false),
('b91ad6b5-de93-5b83-ba54-869cc99548b4', 'ابن', 3, false, false),
('aa2645a7-8930-5c69-89bd-1e21a2726b1d', 'ابنة', 4, false, false),
('901131e1-530d-5b68-97c0-86bd334e88c7', 'جد', 5, false, false),
('50059ed4-ff2a-54ac-8114-385ff1521a6c', 'جدة', 6, false, false);
SELECT pg_catalog.setval('public.person_types_order_seq', coalesce((SELECT max("order") FROM person_types), 0) + 1, false);

INSERT INTO public.martial_statuses (name) VALUES
('married'),
('separated'),
('divorced'),
('widowed'),
('single'),
('widowedWithoutChildren');

\unrestrict T2aR9AxzTQKuuRRvCAJkXgCxWdKVhW3L;
