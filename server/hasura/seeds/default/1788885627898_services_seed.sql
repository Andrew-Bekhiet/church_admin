SET transaction_timeout = 0;
SET check_function_bodies = false;

DO $$
DECLARE
    v_service_edad_khodam uuid := gen_random_uuid();
    v_service_gam3a_wa_khrigeen uuid := gen_random_uuid();
    v_service_kg uuid := gen_random_uuid();
    v_service_e3dady uuid := gen_random_uuid();
    v_service_thanawy uuid := gen_random_uuid();
    v_service_ebtedaey uuid := gen_random_uuid();
    v_meeting_kg uuid := gen_random_uuid();
    v_meeting_madares_ahad uuid := gen_random_uuid();
    v_meeting_thanawy uuid := gen_random_uuid();
    v_meeting_e3dady uuid := gen_random_uuid();
    v_meeting_shabab uuid := gen_random_uuid();
    v_meeting_edad_khodam uuid := gen_random_uuid();
BEGIN
    -- next_service_id and default_meeting_id are filled in afterwards: both FKs
    -- (and the default-meeting trigger) are checked immediately, and next_service_id
    -- and default_meeting_id point at rows that don't exist yet at insert time.
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_edad_khodam, 'اعداد خدام', null, null, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (gen_random_uuid(), 'خدمة جامعة', null, null, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_gam3a_wa_khrigeen, 'خدمة جامعة وخريجين', null, null, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_kg, 'خدمة KG', -4, 0, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_e3dady, 'خدمة اعدادي', 7, 9, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_thanawy, 'خدمة ثانوي', 10, 12, null, null, null, null, null, null, null);
    INSERT INTO public.services (id, name, study_year_from_id, study_year_to_id, next_service_id, color, photo_updated_at, blurhash, deleted_at, deleted_by, default_meeting_id) VALUES
    (v_service_ebtedaey, 'خدمة ابتدائي', 1, 6, null, null, null, null, null, null, null);

    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_kg, 'اجتماع KG', v_service_kg, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_madares_ahad, 'مدارس الأحد', v_service_ebtedaey, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_thanawy, 'اجتماع ثانوي', v_service_thanawy, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_e3dady, 'اجتماع اعدادي', v_service_e3dady, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_shabab, 'اجتماع الشباب', v_service_gam3a_wa_khrigeen, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (v_meeting_edad_khodam, 'اجتماع اعداد خدام', v_service_edad_khodam, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'اجتماع KG', v_service_kg, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'اجتماع اعداد خدام', v_service_edad_khodam, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'مدارس الأحد', v_service_ebtedaey, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'اجتماع ثانوي', v_service_thanawy, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'اجتماع اعدادي', v_service_e3dady, null, null, null, 'personsAndServants', false, null);
    INSERT INTO history.meetings (id, name, service_id, service_study_year, service_gender, group_id, audience, is_archived, color) VALUES
    (gen_random_uuid(), 'اجتماع الشباب', v_service_gam3a_wa_khrigeen, null, null, null, 'personsAndServants', false, null);

    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'Baby Class بنات', v_service_kg, -2, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'Baby Class ولاد', v_service_kg, -2, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'KG1 بنات', v_service_kg, -1, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'KG1 ولاد', v_service_kg, -1, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'KG2 بنات', v_service_kg, 0, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'KG2 ولاد ', v_service_kg, 0, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'سادسة بنات ', v_service_ebtedaey, 6, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'سادسة ولاد ', v_service_ebtedaey, 6, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثة إعدادي بنين', v_service_e3dady, 9, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى ثانوي بنين', v_service_thanawy, 10, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'خامسة ولاد', v_service_ebtedaey, 5, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'رابعة بنات', v_service_ebtedaey, 4, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثة إعدادي بنات', v_service_e3dady, 9, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثة ثانوي بنين', v_service_thanawy, 12, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية بنات', v_service_ebtedaey, 2, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثه ثانوي بنات', v_service_thanawy, 12, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'خامسة  بنات', v_service_ebtedaey, 5, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية ثانوي بنات', v_service_thanawy, 11, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'رابعة ولاد', v_service_ebtedaey, 4, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية ولاد', v_service_ebtedaey, 2, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى ثانوي بنات', v_service_thanawy, 10, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثة ولاد', v_service_ebtedaey, 3, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى إعدادي بنين', v_service_e3dady, 7, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى ولاد', v_service_ebtedaey, 1, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية ثانوي بنين ', v_service_thanawy, 11, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية إعدادي بنين', v_service_e3dady, 8, true, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثانية إعدادي بنات', v_service_e3dady, 8, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى إعدادي بنات', v_service_e3dady, 7, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'ثالثة بنات', v_service_ebtedaey, 3, false, null, null, null, null, null);
    INSERT INTO public.classes (id, name, service_id, service_study_year, service_gender, color, photo_updated_at, blurhash, deleted_at, deleted_by) VALUES
    (gen_random_uuid(), 'أولى بنات', v_service_ebtedaey, 1, false, null, null, null, null, null);

    UPDATE public.services SET default_meeting_id = v_meeting_edad_khodam WHERE id = v_service_edad_khodam;
    UPDATE public.services SET default_meeting_id = v_meeting_shabab WHERE id = v_service_gam3a_wa_khrigeen;
    UPDATE public.services SET next_service_id = v_service_ebtedaey, default_meeting_id = v_meeting_kg WHERE id = v_service_kg;
    UPDATE public.services SET next_service_id = v_service_thanawy, default_meeting_id = v_meeting_e3dady WHERE id = v_service_e3dady;
    UPDATE public.services SET next_service_id = v_service_gam3a_wa_khrigeen, default_meeting_id = v_meeting_thanawy WHERE id = v_service_thanawy;
    UPDATE public.services SET next_service_id = v_service_e3dady, default_meeting_id = v_meeting_madares_ahad WHERE id = v_service_ebtedaey;
END $$;
