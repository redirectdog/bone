BEGIN;
	ALTER TABLE redirects ADD COLUMN allow_tls BOOLEAN NOT NULL DEFAULT FALSE;
	UPDATE redirects SET allow_tls=record_confirmed;
COMMIT;
