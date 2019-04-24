BEGIN;
	CREATE TABLE visits (
		redirect	INTEGER	NOT NULL REFERENCES redirects(id),
		tstamp		TIMESTAMP WITH TIME ZONE NOT NULL,
		ip_address	TEXT,
		user_agent	TEXT,
		uri_path	TEXT NOT NULL
	);
COMMIT;
