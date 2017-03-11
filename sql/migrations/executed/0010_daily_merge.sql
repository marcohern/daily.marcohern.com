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

-- Syncs
INSERT INTO syncs (event_date, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-02-27 20:54',3253592.25,38550,0,0,0,0,3253592.25,38550,0,NOW()),
('2017-02-28 22:00',2953581.16,270550,0,3253592.25,38550,0,-300011.09,232000,0,NOW()),
('2017-03-01 14:15',2953590.07,270550,0,2953581.16,242050,0,8.90999999968335,28500,0,NOW()),
('2017-03-01 22:24',2953590.07,177850,0,2953590.07,270550,0,0,-92700,0,NOW());

-- Trans
INSERT INTO trans (event_date, category_id, value, created) VALUES
('2017-02-28 06:56',1,-2400,NOW()),
('2017-02-28 07:36',2,-5000,NOW()),
('2017-02-28 12:30',6,-10000,NOW()),
('2017-02-28 13:00',7,-2000,NOW()),
('2017-02-28 17:12',1,2400,NOW()),
('2017-02-28 18:00',1,-2400,NOW()),
('2017-02-28 21:10',11,-64000,NOW()),
('2017-03-01 07:20',1,-2400,NOW()),
('2017-03-01 08:36',4,-8600,NOW()),
('2017-03-01 13:00',6,-15500,NOW()),
('2017-03-01 14:15',1,-2400,NOW()),
('2017-03-01 18:00',10,-9900,NOW()),
('2017-03-01 18:45',1,-2000,NOW()),
('2017-03-01 18:56',13,-50000,NOW()),
('2017-03-02 07:27',1,-2400,NOW()),
('2017-03-02 09:12',2,-5000,NOW());

-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(14,'Limosna',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, category_id, value, created) VALUES
('2017-03-02 07:30',8,-29000,NOW()),
('2017-03-02 17:40',1,-2400,NOW()),
('2017-03-03 07:40',1,-2400,NOW()),
('2017-03-03 12:00',6,-21000,NOW()),
('2017-03-03 17:50',1,-2400,NOW()),
('2017-03-03 18:03',14,-400,NOW()),
('2017-03-03 18:33',2,-9400,NOW()),
('2017-03-03 21:06',8,-50000,NOW()),
('2017-03-03 22:12',9,-9500,NOW());

-- Syncs
INSERT INTO syncs (event_date, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-02 21:53',2952398.15,139150,0,2953590.07,177850,0,1191.91999999993,38700,0,NOW()),
('2017-03-04 08:02',2952414.31,44050,0,2952398.15,139150,0,-16.160000000149,95100,0,NOW());

-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(15,'Monedas',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, category_id, created) VALUES
('2017-03-04 10:55',200,15,NOW()),
('2017-03-04 14:44',-30700,6,NOW()),
('2017-03-04 16:25',-7600,10,NOW()),
('2017-03-05 15:50',-2300,1,NOW()),
('2017-03-05 17:50',-6600,10,NOW()),
('2017-03-05 19:05',-13000,9,NOW()),
('2017-03-05 20:02',-2300,1,NOW()),
('2017-03-06 07:50',-2400,1,NOW()),
('2017-03-06 09:45',-8300,2,NOW()),
('2017-03-06 09:45',-19000,6,NOW()),
('2017-03-06 17:31',-2400,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-04 22:02',2921714.31,36450,0,2952414.31,44050,0,30700,7600,0,NOW()),
('2017-03-05 20:38',2821599.51,105050,0,2921714.31,36450,0,100114.8,-68600,0,NOW()),
('2017-03-06 20:41',2821207.23,73050,0,2821599.51,105050,0,392.28,32000,0,NOW());

DROP TABLE IF EXISTS migrations;

CREATE TABLE migrations(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	created DATETIME NOT NULL,
	group_id INT NOT NULL DEFAULT 0,
	description VARCHAR(256) NOT NULL,

	INDEX ix_migrations_group_id (group_id DESC)
);

ALTER TABLE trans
  ADD processed ENUM('true','false') NOT NULL DEFAULT 'true' AFTER value,
  ADD group_id INT NOT NULL DEFAULT 0 AFTER processed;

ALTER TABLE syncs
  ADD processed ENUM('true','false') NOT NULL DEFAULT 'true' AFTER event_date,
  ADD group_id INT NOT NULL DEFAULT 0 AFTER processed;
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 1, 'First Migration record');

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-07 07:24',1,'false',2821214.18,30150,0,2821207.23,73050,0,-6.95,42900,0,NOW()),
('2017-03-08 19:21',1,'false',2721222.67,96450,0,2821214.18,30150,0,99991.51,-66300,0,NOW());

-- Trans
INSERT INTO trans (event_date, value, group_id, processed, category_id, created) VALUES
('2017-03-07 07:20',-2400,1,'false',1,NOW()),
('2017-03-07 01:50',-18500,1,'false',6,NOW()),
('2017-03-07 03:12',-4200,1,'false',2,NOW()),
('2017-03-07 03:46',-5600,1,'false',16,NOW()),
('2017-03-07 06:02',-2000,1,'false',1,NOW()),
('2017-03-08 08:01',-15000,1,'false',17,NOW()),
('2017-03-08 08:03',-2400,1,'false',1,NOW()),
('2017-03-08 09:32',-7600,1,'false',2,NOW()),
('2017-03-08 12:53',-10500,1,'false',6,NOW()),
('2017-03-08 13:40',-6100,1,'false',18,NOW()),
('2017-03-08 18:00',-2000,1,'false',1,NOW());

-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(16,'Regalo',NOW(),NULL),
(17,'Aseo',NOW(),NULL),
(18,'Postre',NOW(),NULL);

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 2, 'Adding group_id and hypercat to Categories.');

ALTER TABLE trans_cat
  ADD hypercat ENUM(
  	'NONE','TRANSPORT','FOOD','PURCHASES','OTHER'
  ) NOT NULL DEFAULT 'NONE' AFTER name,
  ADD group_id INT NOT NULL DEFAULT 0 AFTER hypercat;

-- Categories
INSERT INTO trans_cat (id, name, group_id, created, updated) VALUES
(19,'Taxi',2,NOW(),NULL),
(20,'Uber',2,NOW(),NULL),
(21,'Copias de Llaves',2,NOW(),NULL);

-- Update HyperCategory on categories
UPDATE trans_cat SET hypercat = 'TRANSPORT' WHERE id=1;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=2;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=3;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=4;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=5;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=6;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=7;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=8;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=9;
UPDATE trans_cat SET hypercat = 'PURCHASES' WHERE id=10;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=11;
UPDATE trans_cat SET hypercat = 'OTHER' WHERE id=12;
UPDATE trans_cat SET hypercat = 'OTHER' WHERE id=13;
UPDATE trans_cat SET hypercat = 'OTHER' WHERE id=14;
UPDATE trans_cat SET hypercat = 'OTHER' WHERE id=15;
UPDATE trans_cat SET hypercat = 'PURCHASES' WHERE id=16;
UPDATE trans_cat SET hypercat = 'OTHER' WHERE id=17;
UPDATE trans_cat SET hypercat = 'FOOD' WHERE id=18;
UPDATE trans_cat SET hypercat = 'TRANSPORT' WHERE id=19;

-- Trans
INSERT INTO trans (event_date, value, group_id, processed, category_id, created) VALUES
('2017-03-09 07:40:00',-2400,2,'false',1,NOW()),
('2017-03-09 08:15:00',-2700,2,'false',4,NOW()),
('2017-03-09 13:22:43',-18500,2,'false',6,NOW()),
('2017-03-09 14:02:21',-2500,2,'false',7,NOW()),
('2017-03-09 18:00:00',-2000,2,'false',1,NOW()),
('2017-03-09 19:48:47',-123000,2,'false',10,NOW()),
('2017-03-09 20:40:00',-1500,2,'false',21,NOW()),
('2017-03-10 07:16:21',-2400,2,'false',1,NOW()),
('2017-03-10 12:03:00',-13000,2,'false',6,NOW()),
('2017-03-10 14:39:00',-2100,2,'false',3,NOW()),
('2017-03-10 17:07:00',-8300,2,'false',2,NOW()),
('2017-03-10 17:32:00',-2000,2,'false',1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-09 22:58',2,'false',2596930.12,67850,0,2721222.67,96450,0,124292.55,28600,0,NOW()),
('2017-03-11 08:01',2,'false',2596448.74,35850,0,2596930.12,67850,0,481.379999999888,32000,0,NOW());

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 3, 'Adding SORTIE hypercategory.');

ALTER TABLE trans_cat 
MODIFY hypercat ENUM(
  	'NONE','TRANSPORT','FOOD','PURCHASES','OTHER','SORTIE'
) NOT NULL DEFAULT 'NONE';

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(22,'Sortie',3,'SORTIE',NOW(),NULL),
(23,'Helado',3,'FOOD',NOW(),NULL);

UPDATE trans_cat SET hypercat = 'SORTIE' WHERE id = 11;

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 4, 'Creating daily table and procedures to calculate daily expenses.');

DROP TABLE IF EXISTS daily;

CREATE TABLE daily(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	day DATE NOT NULL,

	transport NUMERIC(20,2) NOT NULL,
	food NUMERIC(20,2) NOT NULL,
	purchases NUMERIC(20,2) NOT NULL,
	sortie NUMERIC(20,2) NOT NULL,
	others NUMERIC(20,2) NOT NULL,

	total NUMERIC(20,2) NOT NULL,

	INDEX ix_daily_day (day DESC)
);

UPDATE trans SET processed = 'false';


DROP PROCEDURE IF EXISTS ImportDaily;

DELIMITER $$

CREATE PROCEDURE ImportDaily()
BEGIN
	DECLARE dtEvent DATE;

	SELECT  MAX(DATE(event_date)) INTO dtEvent
	FROM trans;
    
    SET dtEvent = DATE_SUB(dtEvent, INTERVAL 2 DAY);
	
    
    INSERT INTO daily(day, transport, food, purchases, sortie, others, total)
 	SELECT	DATE(t.event_date)		AS day,
	        IFNULL(SUM(r.value),0)	AS transport,
	        IFNULL(SUM(f.value),0)	AS food,
	        IFNULL(SUM(p.value),0)	AS purchases,
	        IFNULL(SUM(s.value),0)	AS sortie,
			IFNULL(SUM(o.value),0)	AS others,
			SUM(t.value)			AS total
	FROM		trans t
	LEFT JOIN	trans_cat c  ON t.category_id = c.id

	LEFT JOIN	trans_cat cr ON cr.id = c.id AND cr.hypercat = 'TRANSPORT'
	LEFT JOIN   trans r      ON r.id = t.id  AND r.category_id = cr.id

	LEFT JOIN	trans_cat cf ON cf.id = c.id AND cf.hypercat = 'FOOD'
	LEFT JOIN   trans f      ON f.id = t.id  AND f.category_id = cf.id

	LEFT JOIN	trans_cat cp ON cp.id = c.id AND cp.hypercat = 'PURCHASES'
	LEFT JOIN   trans p      ON p.id = t.id  AND p.category_id = cp.id

	LEFT JOIN	trans_cat cs ON cs.id = c.id AND cs.hypercat = 'SORTIE'
	LEFT JOIN   trans s      ON s.id = t.id  AND s.category_id = cs.id

	LEFT JOIN	trans_cat co ON co.id = c.id AND co.hypercat = 'OTHER'
	LEFT JOIN   trans o      ON o.id = t.id  AND o.category_id = co.id

	WHERE t.processed = 'false'
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET processed = 'true' WHERE event_date > dtEvent;

END$$

DELIMITER ;

