DROP TABLE IF EXISTS syncs;

CREATE TABLE syncs (
	id         BIGINT        NOT NULL PRIMARY KEY AUTO_INCREMENT,
	event_date DATETIME      NOT NULL,

	bank       NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	pockets    NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	storage    NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	
	pr_bank    NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	pr_pockets NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	pr_storage NUMERIC(20,2) NOT NULL DEFAULT 0.0,

	df_bank    NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	df_pockets NUMERIC(20,2) NOT NULL DEFAULT 0.0,
	df_storage NUMERIC(20,2) NOT NULL DEFAULT 0.0,

	created    DATETIME      NOT NULL,
	updated    DATETIME          NULL,

	INDEX ix_syncs_event_date (event_date DESC)
);

