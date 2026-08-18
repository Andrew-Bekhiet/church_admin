ALTER TABLE "auth"."users_data" ALTER COLUMN "auth_id" DROP NOT NULL;

COMMENT ON COLUMN "auth"."users_data"."auth_id" IS 'Firebase Auth UID. NULL until the invited user claims the row by signing up with the matching email.';
