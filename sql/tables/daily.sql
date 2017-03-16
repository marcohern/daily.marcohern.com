DROP TABLE IF EXISTS daily;

CREATE TABLE daily(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	day DATE NOT NULL,
	processed ENUM('true','false') NOT NULL DEFAULT 'false',

	transport NUMERIC(20,2) NOT NULL,
	food      NUMERIC(20,2) NOT NULL,
	purchases NUMERIC(20,2) NOT NULL,
	sortie    NUMERIC(20,2) NOT NULL,
	others    NUMERIC(20,2) NOT NULL,

	db_transport NUMERIC(20,2) NOT NULL,
	db_food      NUMERIC(20,2) NOT NULL,
	db_purchases NUMERIC(20,2) NOT NULL,
	db_sortie    NUMERIC(20,2) NOT NULL,
	db_others    NUMERIC(20,2) NOT NULL,

	cash   NUMERIC(20,2) NOT NULL,
	debit  NUMERIC(20,2) NOT NULL,

	input   NUMERIC(20,2) NOT NULL,
	balance NUMERIC(20,2) NOT NULL,
	output  NUMERIC(20,2) NOT NULL,

	created DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
	updated DATETIME NULL,

	INDEX ix_daily_day (day DESC)
);

