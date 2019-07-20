BEGIN;
	ALTER TABLE users ADD COLUMN cache_visit_pool_remaining INTEGER;
COMMIT;
