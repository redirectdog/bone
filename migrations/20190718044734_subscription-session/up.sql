BEGIN;
	CREATE TABLE subscription_checkout_sessions (
		id		SERIAL		PRIMARY KEY,
		stripe_id	TEXT		UNIQUE,
		user_id		INTEGER		NOT NULL REFERENCES users(id),
		tier_id		INTEGER		NOT NULL REFERENCES subscription_tiers(id),
		completed	BOOLEAN		NOT NULL DEFAULT FALSE,
		timestamp	TIMESTAMPTZ	NOT NULL
	);
COMMIT;
