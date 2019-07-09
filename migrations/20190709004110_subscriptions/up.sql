BEGIN;
	CREATE TABLE subscription_tiers (
		id		INTEGER	PRIMARY KEY,
		name		TEXT	NOT NULL,
		stripe_plan	TEXT,
		visit_limit	INTEGER NOT NULL
	);

	INSERT INTO subscription_tiers (id, name, visit_limit) VALUES (0, 'Free', 0);
	INSERT INTO subscription_tiers (id, name, visit_limit) VALUES (10, 'Silver', 250000);

	CREATE TABLE user_subscriptions (
		id			SERIAL		PRIMARY KEY,
		tier			INTEGER		NOT NULL	REFERENCES subscription_tiers(id),
		user_id			INTEGER		NOT NULL	REFERENCES users(id),
		start_timestamp		TIMESTAMPTZ	NOT NULL,
		end_timestamp		TIMESTAMPTZ,
		stripe_subscription	TEXT
	);

	ALTER TABLE users ADD COLUMN tier INTEGER NOT NULL DEFAULT 0 REFERENCES subscription_tiers(id);

	CREATE TABLE settings (
		free_visits	INTEGER	NOT NULL DEFAULT 500
	);

	INSERT INTO settings DEFAULT VALUES;
COMMIT;
