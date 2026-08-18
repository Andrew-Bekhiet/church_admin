DELETE FROM "auth"."users_data"
WHERE "auth_id" IS NULL;

ALTER TABLE "auth"."users_data" ALTER COLUMN "auth_id" SET NOT NULL;

COMMENT ON COLUMN "auth"."users_data"."auth_id" IS NULL;
