BEGIN;
	ALTER TABLE redirects ADD COLUMN cache_visit_count_total INTEGER;
	ALTER TABLE redirects ADD COLUMN cache_visit_count_month INTEGER;
COMMIT;
