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

DROP TABLE IF EXISTS trans;

CREATE TABLE trans (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	event_date DATETIME NOT NULL,
	category_id INT NOT NULL,
	value NUMERIC(20,2) NOT NULL DEFAULT 0,

	created DATETIME NOT NULL,
	updated DATETIME NULL,

	INDEX ix_trans_event_date (event_date DESC, category_id ASC)
);

DROP TABLE IF EXISTS trans_cat;

CREATE TABLE trans_cat (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,

	name VARCHAR(64) NOT NULL DEFAULT '',
	created DATETIME NOT NULL,
	updated DATETIME NULL
);

-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(1,'Bus/Metro',NOW(),NULL),
(2,'Café',NOW(),NULL),
(3,'Dispensador',NOW(),NULL),
(4,'Desayuno',NOW(),NULL),
(5,'Pos-Desayuno',NOW(),NULL),
(6,'Almuerzo',NOW(),NULL),
(7,'Pos-Almuerzo',NOW(),NULL),
(8,'Comida',NOW(),NULL),
(9,'Pos-Comida',NOW(),NULL),
(10,'Compras Almacen',NOW(),NULL),
(11,'Trago + Comida',NOW(),NULL),
(12,'Cover',NOW(),NULL),
(13,'Cine',NOW(),NULL);

