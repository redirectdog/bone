BEGIN;
	ALTER TABLE redirects DROP COLUMN record_confirmed;
	ALTER TABLE redirects DROP COLUMN last_dns_check;
COMMIT;
