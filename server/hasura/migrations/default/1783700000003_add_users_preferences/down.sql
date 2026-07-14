drop trigger if exists "seed_user_preferences" on "auth"."users_data";
drop function if exists "public"."seed_user_preferences";

drop function if exists "public"."default_order_by_preferences";

drop trigger if exists "set_public_users_preferences_updated_at" on "public"."users_preferences";
drop trigger if exists "set_auth_users_preferences_updated_at" on "public"."users_preferences";

drop table if exists "public"."users_fcm_tokens";
drop table if exists "public"."users_preferences";
drop table if exists "public"."home_mode";
