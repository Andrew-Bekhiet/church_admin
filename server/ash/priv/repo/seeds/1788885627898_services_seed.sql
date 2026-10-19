SET transaction_timeout = 0;
SET check_function_bodies = false;

DO $$
DECLARE
    v_service_edad_khodam uuid := '6b2e6b43-6331-59a9-98b3-92b6aee7ddde';
    v_service_gam3a_wa_khrigeen uuid := '5fa0dfec-41ee-51f4-aa84-9ae48c655951';
    v_service_kg uuid := '5bd5775e-17d8-557a-b749-de52932e443d';
    v_service_e3dady uuid := 'be19a3f2-cad0-5522-b291-110b557233db';
    v_service_thanawy uuid := '152f4010-3031-55b9-bac5-2fd1ec1aab82';
    v_service_ebtedaey uuid := '39ad625b-b7d1-5da2-80cb-2df8f290a651';
    v_meeting_kg uuid := 'ab99f12d-8c6f-518a-8058-34dae873934c';
    v_meeting_madares_ahad uuid := '82565173-8c93-5131-88fd-19cfe4376572';
    v_meeting_thanawy uuid := 'f6ccba26-48c0-57a8-b624-f40445c8e0d9';
    v_meeting_e3dady uuid := 'c454373b-0ab7-51a4-b505-41e445df003e';
    v_meeting_shabab uuid := '12920964-7101-583c-a1bd-56c5d0c66c0c';
    v_meeting_edad_khodam uuid := 'c96a9af8-d24f-52aa-b736-87eb3a8c6d2e';
BEGIN
    -- next_service_id and default_meeting_id are filled in afterwards: both FKs
    -- (and the default-meeting trigger) are checked immediately, and next_service_id
    -- and default_meeting_id point at rows that don't exist yet at insert time.
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_edad_khodam, 'اعداد خدام', null, null, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    ('41c78704-9625-565d-aaa4-b96286b3a904', 'خدمة جامعة', null, null, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_gam3a_wa_khrigeen, 'خدمة جامعة وخريجين', null, null, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_kg, 'خدمة KG', -4, 0, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_e3dady, 'خدمة اعدادي', 7, 9, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_thanawy, 'خدمة ثانوي', 10, 12, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_ebtedaey, 'خدمة ابتدائي', 1, 6, null, null, null, null, null, null, null)
    ON CONFLICT DO NOTHING;

    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_kg, 'اجتماع KG', v_service_kg, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_madares_ahad, 'مدارس الأحد', v_service_ebtedaey, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_thanawy, 'اجتماع ثانوي', v_service_thanawy, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_e3dady, 'اجتماع اعدادي', v_service_e3dady, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_shabab, 'اجتماع الشباب', v_service_gam3a_wa_khrigeen, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_edad_khodam, 'اجتماع اعداد خدام', v_service_edad_khodam, null, null, null, 'personsAndServants', false, null)
    ON CONFLICT DO NOTHING;
    
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('af30c57c-2308-5bac-b20f-b54e134ca13e', 'Baby Class بنات', v_service_kg, -2, -2, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('f9fbffec-c7ee-5dff-a411-c1260cb4d5d9', 'Baby Class ولاد', v_service_kg, -2, -2, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('b4bbfc02-539a-53dc-8dbb-6973a4a5c854', 'KG1 بنات', v_service_kg, -1, -1, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('fb9e137a-f0f6-5212-9994-cd2fba36418e', 'KG1 ولاد', v_service_kg, -1, -1, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('754a7af6-906b-597c-b32f-838dfd448eda', 'KG2 بنات', v_service_kg, 0, 0, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('6b66ae75-2b2f-5952-9423-04c75f311cb0', 'KG2 ولاد ', v_service_kg, 0, 0, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('dc31746d-96bf-5859-abec-ef2ccb7e4e5f', 'سادسة بنات ', v_service_ebtedaey, 6, 6, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('c3c0cf48-d330-51de-bc34-1f7912378f96', 'سادسة ولاد ', v_service_ebtedaey, 6, 6, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('26c792c6-e37d-5e36-8b9a-771041e5e7bf', 'ثالثة إعدادي بنين', v_service_e3dady, 9, 9, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('84b33f13-6ce0-533e-a7da-f45e44f9f1f7', 'أولى ثانوي بنين', v_service_thanawy, 10, 10, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('6f2cec2a-ea3e-5aa9-9d05-5efb2a163a89', 'خامسة ولاد', v_service_ebtedaey, 5, 5, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('edda1b61-47a4-5e9f-b74c-a0d2beedaed3', 'رابعة بنات', v_service_ebtedaey, 4, 4, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('f73dfc57-9f62-50cb-8356-ca8f60c30e49', 'ثالثة إعدادي بنات', v_service_e3dady, 9, 9, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('5cbfa5fa-bf2e-5c12-9002-1b61be13ce32', 'ثالثة ثانوي بنين', v_service_thanawy, 12, 12, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('bb93614c-621d-5712-8d0f-c51d86e50de6', 'ثانية بنات', v_service_ebtedaey, 2, 2, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('3caf8d2d-3f88-5e61-8e0b-6972eb985211', 'ثالثه ثانوي بنات', v_service_thanawy, 12, 12, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('80544b43-3459-526b-b076-65d70a0ff640', 'خامسة  بنات', v_service_ebtedaey, 5, 5, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('a78019b4-6aa5-5b55-b94e-5faf91d35960', 'ثانية ثانوي بنات', v_service_thanawy, 11, 11, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('89acea2b-be50-52b9-9ce7-c05eaaf5c559', 'رابعة ولاد', v_service_ebtedaey, 4, 4, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('eb510593-4d80-586c-9066-9c60efab1041', 'ثانية ولاد', v_service_ebtedaey, 2, 2, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('e95d1474-234d-5766-9a67-6864c2cea20d', 'أولى ثانوي بنات', v_service_thanawy, 10, 10, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('bac11773-993c-5beb-b333-d900ed494fb8', 'ثالثة ولاد', v_service_ebtedaey, 3, 3, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('e6bd7b6d-5782-56a5-bab4-781ecb62575e', 'أولى إعدادي بنين', v_service_e3dady, 7, 7, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('f0b121c3-2610-598f-b9ec-7b03eee67ada', 'أولى ولاد', v_service_ebtedaey, 1, 1, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('18bb6618-2aab-5b00-9d00-c87b4ad4fef1', 'ثانية ثانوي بنين ', v_service_thanawy, 11, 11, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('75badb93-622e-5c94-8ef3-002920a8900c', 'ثانية إعدادي بنين', v_service_e3dady, 8, 8, true, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('9317640e-a8ab-5d44-9e36-6c64a8bead61', 'ثانية إعدادي بنات', v_service_e3dady, 8, 8, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('af702766-6bcf-5a5d-ae5b-95de27482f1f', 'أولى إعدادي بنات', v_service_e3dady, 7, 7, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('8fc55644-b90d-505f-8901-cf45a6ea2a8a', 'ثالثة بنات', v_service_ebtedaey, 3, 3, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_study_year_to, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    ('0b88dce4-8849-50f7-b5f9-49ec97eae7e3', 'أولى بنات', v_service_ebtedaey, 1, 1, false, null, null, null, null, null)
    ON CONFLICT DO NOTHING;

    UPDATE public.services SET default_meeting_id = v_meeting_edad_khodam WHERE id = v_service_edad_khodam;
    UPDATE public.services SET default_meeting_id = v_meeting_shabab WHERE id = v_service_gam3a_wa_khrigeen;
    UPDATE public.services SET next_service_id = v_service_ebtedaey, default_meeting_id = v_meeting_kg WHERE id = v_service_kg;
    UPDATE public.services SET next_service_id = v_service_thanawy, default_meeting_id = v_meeting_e3dady WHERE id = v_service_e3dady;
    UPDATE public.services SET next_service_id = v_service_gam3a_wa_khrigeen, default_meeting_id = v_meeting_thanawy WHERE id = v_service_thanawy;
    UPDATE public.services SET next_service_id = v_service_e3dady, default_meeting_id = v_meeting_madares_ahad WHERE id = v_service_ebtedaey;
END $$;
