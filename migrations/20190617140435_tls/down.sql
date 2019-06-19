BEGIN;
	ALTER TABLE redirects DROP COLUMN tls_renewed_at;
	ALTER TABLE redirects DROP COLUMN tls_cert;
	ALTER TABLE redirects DROP COLUMN tls_privkey;
	ALTER TABLE redirects DROP COLUMN acme_failed;
	ALTER TABLE redirects DROP COLUMN acme_key_authorization;
	ALTER TABLE redirects DROP COLUMN acme_token;
	ALTER TABLE redirects DROP COLUMN allow_tls;
COMMIT;
