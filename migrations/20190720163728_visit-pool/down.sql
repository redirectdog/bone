BEGIN;
	ALTER TABLE users DROP COLUMN cache_visit_pool_remaining;
COMMIT;
