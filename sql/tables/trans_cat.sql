DROP TABLE IF EXISTS trans_cat;

CREATE TABLE trans_cat (
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,

	name VARCHAR(64) NOT NULL DEFAULT '',
	hypercat ENUM('NONE','TRANSPORT','FOOD','PURCHASES','OTHER','SORTIE') NOT NULL DEFAULT 'NONE',
	group_id INT NOT NULL DEFAULT 0,
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

