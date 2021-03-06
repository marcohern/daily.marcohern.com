DROP TABLE IF EXISTS migrations;

CREATE TABLE migrations(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created DATETIME NOT NULL,
	group_id INT NOT NULL DEFAULT 0,
	description VARCHAR(256) NOT NULL,

	INDEX ix_migrations_group_id (group_id DESC)
);

