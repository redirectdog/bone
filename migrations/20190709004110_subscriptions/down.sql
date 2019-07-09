BEGIN;
	DROP TABLE settings;
	ALTER TABLE users DROP COLUMN tier;
	DROP TABLE user_subscriptions;
	DROP TABLE subscription_tiers;
COMMIT;
