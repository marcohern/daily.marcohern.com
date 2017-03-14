DROP TABLE IF EXISTS trans;

CREATE TABLE trans (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	event_date DATETIME NOT NULL,
	category_id INT NOT NULL,
	value NUMERIC(20,2) NOT NULL DEFAULT 0,
	mode ENUM('CASH','DEBIT') NOT NULL DEFAULT 'CASH',
	processed ENUM('true','false') NOT NULL DEFAULT 'true',
	group_id INT NOT NULL DEFAULT 0,

	created DATETIME NOT NULL,
	updated DATETIME NULL,

	INDEX ix_trans_event_date (event_date DESC, category_id ASC)
);

