DROP TABLE IF EXISTS daily;

CREATE TABLE daily(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	day DATE NOT NULL,
	processed ENUM('true','false') NOT NULL DEFAULT 'false',

	transport NUMERIC(20,2) NOT NULL,
	food NUMERIC(20,2) NOT NULL,
	purchases NUMERIC(20,2) NOT NULL,
	sortie NUMERIC(20,2) NOT NULL,
	others NUMERIC(20,2) NOT NULL,

	total NUMERIC(20,2) NOT NULL,

	INDEX ix_daily_day (day DESC)
);

