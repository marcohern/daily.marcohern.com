DROP TABLE IF EXISTS trans_cat;

CREATE TABLE trans_cat (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,

	name VARCHAR(64) NOT NULL DEFAULT '',
	created DATETIME NOT NULL,
	updated DATETIME NULL
);

INSERT INTO trans_cat (id, name, created, updated) VALUES
(1,'Bus/Metro',NOW(),NULL),
(2,'Café',NOW(),NULL),
(3,'Dispensador',NOW(),NULL),
(4,'Desayuno',NOW(),NULL),
(5,'Pos-Desayuno',NOW(),NULL),
(6,'Almuerzo',NOW(),NULL),
(7,'Pos-Almuerzo',NOW(),NULL),
(8,'Comida',NOW(),NULL),
(9,'Pos-Comida',NOW(),NULL);

