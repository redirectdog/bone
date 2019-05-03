BEGIN;
	ALTER TABLE redirects DROP COLUMN cache_visit_count_month;
	ALTER TABLE redirects DROP COLUMN cache_visit_count_total;
COMMIT;
