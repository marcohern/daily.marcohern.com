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



INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 5, 'Adding processed column to daily table');

ALTER TABLE daily
  ADD processed ENUM('true','false') NOT NULL DEFAULT 'false'
  AFTER day;



INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 6, 'Instead of having a single processed column, replace it for multiple processed columsn, one per summary');

ALTER TABLE trans
ADD pdaily   ENUM('true','false') NOT NULL DEFAULT 'false' AFTER event_date,
ADD pweekly  ENUM('true','false') NOT NULL DEFAULT 'false' AFTER pdaily,
ADD pmonthly ENUM('true','false') NOT NULL DEFAULT 'false' AFTER pweekly,
ADD pyearly  ENUM('true','false') NOT NULL DEFAULT 'false' AFTER pmonthly;

UPDATE trans SET pdaily = 'true' WHERE processed = 'true';

ALTER TABLE trans DROP processed;

CREATE INDEX ix_trans_pdaily   ON trans (pdaily   ASC);
CREATE INDEX ix_trans_pweekly  ON trans (pweekly  ASC);
CREATE INDEX ix_trans_pmonthly ON trans (pmonthly ASC);
CREATE INDEX ix_trans_pyearly  ON trans (pyearly  ASC);


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

	WHERE t.pdaily = 'false'
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET pdaily = 'true' WHERE event_date < dtEvent;

END$$

DELIMITER ;

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 7, 'Adding more data, before changing structure again');

INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(24,'Retiro Cajero',7,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-11 18:39:26',-25900,7,8,NOW()),
('2017-03-11 19:45:21',-1100,7,9,NOW()),
('2017-03-12 20:28:00',-13900,7,8,NOW()),
('2017-03-12 20:37:00',-2400,7,18,NOW()),
('2017-03-12 08:03:00',-2400,7,1,NOW()),
('2017-03-12 08:52:00',-2800,7,4,NOW()),
('2017-03-12 13:30:21',-19200,7,6,NOW()),
('2017-03-12 13:58:59',-10100,7,18,NOW()),
('2017-03-12 15:23:47',-2000,7,1,NOW()),
('2017-03-12 19:28:00',100000,7,24,NOW()),
('2017-03-12 19:58:23',-5300,7,8,NOW());


-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-11 21:05:00',7,'false',2570548.74,34750,0,2596448.74,35850,0,25900,1100,0,NOW()),
('2017-03-12 19:28:00',7,'false',2451259.22,101150,0,2570548.74,34750,0,119289.52,-66400,0,NOW());


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 8, 'Adding debit card operations and distinctions');

ALTER TABLE trans
ADD mode ENUM('CASH','DEBIT') NOT NULL DEFAULT 'CASH'
AFTER value;

UPDATE trans SET mode = 'DEBIT' WHERE value > 1000;

ALTER TABLE syncs
DROP df_bank, DROP df_pockets, DROP df_storage;

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

	INDEX ix_daily_day (day DESC)
);

UPDATE trans SET pdaily = 'false';


DROP PROCEDURE IF EXISTS ImportDaily;

DELIMITER $$

CREATE PROCEDURE ImportDaily()
BEGIN
	DECLARE dtEvent DATE;

	SELECT  MAX(DATE(event_date)) INTO dtEvent
	FROM trans;
    
    SET dtEvent = DATE_SUB(dtEvent, INTERVAL 2 DAY);
    
    INSERT INTO daily(day,
		transport, food, purchases, sortie, others,
        db_transport, db_food, db_purchases, db_sortie, db_others,
        cash, debit, input, balance, output) 	
	SELECT DATE(t.event_date) AS day

		 , IFNULL(SUM(r.value), 0) AS transport
		 , IFNULL(SUM(f.value), 0) AS food
		 , IFNULL(SUM(p.value), 0) AS purchases
		 , IFNULL(SUM(s.value), 0) AS sortie
		 , IFNULL(SUM(o.value), 0) AS others
		 
		 , IFNULL(SUM(dr.value), 0) AS db_transport
		 , IFNULL(SUM(df.value), 0) AS db_food
		 , IFNULL(SUM(dp.value), 0) AS db_purchases
		 , IFNULL(SUM(ds.value), 0) AS db_sortie
		 , IFNULL(SUM(do.value), 0) AS db_others

		 , IFNULL(SUM(cash.value), 0) AS cash
		 , IFNULL(SUM(deb.value), 0)  AS debit

		 , IFNULL(SUM(ti.value), 0) AS input
		 , IFNULL(SUM(t.value), 0) AS balance
		 , IFNULL(SUM(tt.value), 0) AS output
	# All transaction records
	FROM      trans     t
	# Each category for each of all transaction records
	LEFT JOIN trans_cat c  ON t.category_id = c.id

	# All negative transactions 
	LEFT JOIN trans     tt ON t.id = tt.id AND tt.value < 0

	# All positive transactions
	LEFT JOIN trans     ti ON t.id = ti.id AND ti.value > 0

	#All Negative CASH transactions
	LEFT JOIN trans     cash ON tt.id = cash.id AND cash.mode = 'CASH' 

	#All Negative DEBIT transactions
	LEFT JOIN trans     deb  ON tt.id = deb.id  AND deb.mode  = 'DEBIT' 

	LEFT JOIN trans_cat rc ON rc.id = c.id   AND rc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     r  ON r.id = cash.id AND r.category_id = rc.id

	LEFT JOIN trans_cat rf ON rf.id = c.id   AND rf.hypercat = 'FOOD'
	LEFT JOIN trans     f  ON f.id = cash.id AND f.category_id = rf.id

	LEFT JOIN trans_cat rp ON rp.id = c.id   AND rp.hypercat = 'PURCHASES'
	LEFT JOIN trans     p  ON p.id = cash.id AND p.category_id = rp.id

	LEFT JOIN trans_cat rs ON rs.id = c.id   AND rs.hypercat = 'SORTIE'
	LEFT JOIN trans     s  ON s.id = cash.id AND s.category_id = rs.id

	LEFT JOIN trans_cat ro ON ro.id = c.id   AND ro.hypercat = 'OTHER'
	LEFT JOIN trans     o  ON o.id = cash.id AND o.category_id = ro.id


	LEFT JOIN trans_cat drc ON drc.id = c.id  AND drc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     dr  ON dr.id = deb.id AND dr.category_id = drc.id

	LEFT JOIN trans_cat drf ON drf.id = c.id  AND drf.hypercat = 'FOOD'
	LEFT JOIN trans     df  ON df.id = deb.id AND df.category_id = drf.id

	LEFT JOIN trans_cat drp ON drp.id = c.id  AND drp.hypercat = 'PURCHASES'
	LEFT JOIN trans     dp  ON dp.id = deb.id AND dp.category_id = drp.id

	LEFT JOIN trans_cat drs ON drs.id = c.id  AND drs.hypercat = 'SORTIE'
	LEFT JOIN trans     ds  ON ds.id = deb.id AND ds.category_id = drs.id

	LEFT JOIN trans_cat dro ON dro.id = c.id  AND dro.hypercat = 'OTHER'
	LEFT JOIN trans     do  ON do.id = deb.id AND do.category_id = dro.id
	WHERE t.pdaily = 'false'
	
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET pdaily = 'true' WHERE event_date < dtEvent;

END$$

DELIMITER ;

CALL ImportDaily();


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 9, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(25,'Pago Movil',9,'PURCHASES',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-13 23:46:19',-80900,9,25,NOW()),
('2017-03-14 08:00:00',-2450,9,1,NOW()),
('2017-03-14 08:30:00',-1300,9,2,NOW()),
('2017-03-14 13:58:55',-22000,9,6,NOW()),
('2017-03-14 18:52:16',-2000,9,1,NOW()),
('2017-03-15 07:15:00',-2400,9,1,NOW()),
('2017-03-15 07:54:00',-2700,9,4,NOW()),
('2017-03-15 13:12:24',-9500,9,6,NOW()),
('2017-03-15 17:03:36',-2000,9,1,NOW()),
('2017-03-15 18:21:42',-10500,9,8,NOW()),
('2017-03-15 18:52:36',-800,9,18,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-14 21:10:00',9,'false',2369535.31,68100,0,2451259.22,101150,0,NOW()),
('2017-03-15 19:35:00',9,'false',2361619.8,40200,0,2369535.31,68100,0,NOW());

CALL ImportDaily;

ALTER TABLE daily
ADD created DATETIME NOT NULL DEFAULT '2000-01-01 00:00:00',
ADD updated DATETIME NULL;

UPDATE daily SET created = NOW();


DROP PROCEDURE IF EXISTS ImportDaily;

DELIMITER $$

CREATE PROCEDURE ImportDaily()
BEGIN
	DECLARE dtEvent DATE;

	SELECT  MAX(DATE(event_date)) INTO dtEvent
	FROM trans;
    
    SET dtEvent = DATE_SUB(dtEvent, INTERVAL 2 DAY);
    
    INSERT INTO daily(day,
		transport, food, purchases, sortie, others,
        db_transport, db_food, db_purchases, db_sortie, db_others,
        cash, debit, input, balance, output, created, updated) 	
	SELECT DATE(t.event_date) AS day

		 , IFNULL(SUM(r.value), 0) AS transport
		 , IFNULL(SUM(f.value), 0) AS food
		 , IFNULL(SUM(p.value), 0) AS purchases
		 , IFNULL(SUM(s.value), 0) AS sortie
		 , IFNULL(SUM(o.value), 0) AS others
		 
		 , IFNULL(SUM(dr.value), 0) AS db_transport
		 , IFNULL(SUM(df.value), 0) AS db_food
		 , IFNULL(SUM(dp.value), 0) AS db_purchases
		 , IFNULL(SUM(ds.value), 0) AS db_sortie
		 , IFNULL(SUM(do.value), 0) AS db_others

		 , IFNULL(SUM(cash.value), 0) AS cash
		 , IFNULL(SUM(deb.value), 0)  AS debit

		 , IFNULL(SUM(ti.value), 0) AS input
		 , IFNULL(SUM(t.value), 0) AS balance
		 , IFNULL(SUM(tt.value), 0) AS output

		 , NOW()
		 , NULL
	# All transaction records
	FROM      trans     t
	# Each category for each of all transaction records
	LEFT JOIN trans_cat c  ON t.category_id = c.id

	# All negative transactions 
	LEFT JOIN trans     tt ON t.id = tt.id AND tt.value < 0

	# All positive transactions
	LEFT JOIN trans     ti ON t.id = ti.id AND ti.value > 0

	#All Negative CASH transactions
	LEFT JOIN trans     cash ON tt.id = cash.id AND cash.mode = 'CASH' 

	#All Negative DEBIT transactions
	LEFT JOIN trans     deb  ON tt.id = deb.id  AND deb.mode  = 'DEBIT' 

	LEFT JOIN trans_cat rc ON rc.id = c.id   AND rc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     r  ON r.id = cash.id AND r.category_id = rc.id

	LEFT JOIN trans_cat rf ON rf.id = c.id   AND rf.hypercat = 'FOOD'
	LEFT JOIN trans     f  ON f.id = cash.id AND f.category_id = rf.id

	LEFT JOIN trans_cat rp ON rp.id = c.id   AND rp.hypercat = 'PURCHASES'
	LEFT JOIN trans     p  ON p.id = cash.id AND p.category_id = rp.id

	LEFT JOIN trans_cat rs ON rs.id = c.id   AND rs.hypercat = 'SORTIE'
	LEFT JOIN trans     s  ON s.id = cash.id AND s.category_id = rs.id

	LEFT JOIN trans_cat ro ON ro.id = c.id   AND ro.hypercat = 'OTHER'
	LEFT JOIN trans     o  ON o.id = cash.id AND o.category_id = ro.id


	LEFT JOIN trans_cat drc ON drc.id = c.id  AND drc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     dr  ON dr.id = deb.id AND dr.category_id = drc.id

	LEFT JOIN trans_cat drf ON drf.id = c.id  AND drf.hypercat = 'FOOD'
	LEFT JOIN trans     df  ON df.id = deb.id AND df.category_id = drf.id

	LEFT JOIN trans_cat drp ON drp.id = c.id  AND drp.hypercat = 'PURCHASES'
	LEFT JOIN trans     dp  ON dp.id = deb.id AND dp.category_id = drp.id

	LEFT JOIN trans_cat drs ON drs.id = c.id  AND drs.hypercat = 'SORTIE'
	LEFT JOIN trans     ds  ON ds.id = deb.id AND ds.category_id = drs.id

	LEFT JOIN trans_cat dro ON dro.id = c.id  AND dro.hypercat = 'OTHER'
	LEFT JOIN trans     do  ON do.id = deb.id AND do.category_id = dro.id
	WHERE t.pdaily = 'false'
	
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET pdaily = 'true' WHERE event_date < dtEvent;

END$$

DELIMITER ;
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 10, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(26,'Donación',10,'OTHER',NOW(),NULL),
(27,'Cerveza',10,'SORTIE',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-16 08:07:49',-2400,10,1,NOW()),
('2017-03-16 08:50:23',-2700,10,4,NOW()),
('2017-03-16 15:36:00',-15500,10,6,NOW()),
('2017-03-16 17:28:00',-10000,10,26,NOW()),
('2017-03-16 17:36:00',-2400,10,1,NOW()),
('2017-03-16 18:16:00',100000,10,24,NOW()),
('2017-03-16 18:22:00',-2800,10,7,NOW()),
('2017-03-16 19:20:00',-3500,10,23,NOW()),
('2017-03-16 20:10:00',-3000,10,27,NOW()),
('2017-03-16 20:45:00',-3000,10,27,NOW()),
('2017-03-17 07:20:00',-2400,10,1,NOW()),
('2017-03-17 08:21:00',-2800,10,4,NOW()),
('2017-03-17 13:55:36',-15500,10,6,NOW()),
('2017-03-17 17:26:18',-2000,10,1,NOW()),
('2017-03-18 09:30:00',-2400,10,1,NOW()),
('2017-03-18 14:02:52',-24800,10,6,NOW()),
('2017-03-18 14:48:00',-5700,10,2,NOW()),
('2017-03-18 15:53:00',-2400,10,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-16 23:37:00',10,'false',2261594.47,94900,0,2361619.8,40200,0,NOW()),
('2017-03-17 19:07:37',10,'false',2261200.66,72200,0,2261594.47,94900,0,NOW()),
('2017-03-18 15:53:00',10,'false',2236406.85,61700,0,2261200.66,72200,0,NOW());

CALL ImportDaily();


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 11, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(28,'Pestramo',11,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-18 20:40:00',-10000,11,8,NOW()),
('2017-03-19 07:13:00',-3400,11,4,NOW()),
('2017-03-19 07:15:00',-2300,11,1,NOW()),
('2017-03-19 07:50:00',-2800,11,5,NOW()),
('2017-03-19 10:44:00',-2000,11,5,NOW()),
('2017-03-19 10:46:00',-1600,11,5,NOW()),
('2017-03-19 11:07:00',-2300,11,1,NOW()),
('2017-03-19 11:59:00',-6000,11,1,NOW()),
('2017-03-19 14:50:00',-20000,11,6,NOW()),
('2017-03-19 15:15:00',-8000,11,7,NOW()),
('2017-03-19 15:25:00',-3000,11,28,NOW()),
('2017-03-19 19:48:00',-8100,11,7,NOW()),
('2017-03-19 20:30:00',0,11,19,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-19 20:30:00',11,'false',2236313.77,12200,0,2236406.85,61700,0,NOW());


CALL ImportDaily();


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 12, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(29,'Arriendo',12,'OTHER',NOW(),NULL);

UPDATE trans_cat
   SET name = 'Prestamo',
   updated = NOW()
 WHERE id = 28;

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-20 07:58:00',-2300,12,4,NOW()),
('2017-03-20 14:18:17',-22900,12,1,NOW()),
('2017-03-20 17:32:00',100000,12,6,NOW()),
('2017-03-20 17:43:00',-2000,12,24,NOW()),
('2017-03-20 18:40:00',-2300,12,1,NOW()),
('2017-03-21 06:58:00',-2400,12,0,NOW()),
('2017-03-21 07:41:00',-2700,12,1,NOW()),
('2017-03-21 13:53:47',-21000,12,4,NOW()),
('2017-03-21 17:33:00',600000,12,6,NOW()),
('2017-03-21 17:40:00',-2000,12,24,NOW()),
('2017-03-21 19:02:00',-28850,12,1,NOW()),
('2017-03-21 19:02:15',-50,12,10,NOW()),
('2017-03-21 19:27:00',-550000,12,10,NOW()),
('2017-03-21 21:08:00',-15000,12,0,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-20 19:33:48',12,'false',2113418.89,102100,0,2236313.77,12200,0,NOW()),
('2017-03-21 20:37:00',12,'false',1512934.07,95100,0,2113418.89,102100,0,NOW());

CALL ImportDaily();


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 13, 'Correcting last data import');

DELETE FROM trans WHERE group_id = 12;

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-20 07:55:00',-2300,12,4,NOW()),
('2017-03-20 07:58:00',-2300,12,1,NOW()),
('2017-03-20 14:18:17',-22900,12,6,NOW()),
('2017-03-20 17:32:00',100000,12,24,NOW()),
('2017-03-20 17:43:00',-2000,12,1,NOW()),
('2017-03-20 18:40:00',-2300,12,8,NOW()),
('2017-03-21 06:58:00',-2400,12,1,NOW()),
('2017-03-21 07:41:00',-2700,12,4,NOW()),
('2017-03-21 13:53:47',-21000,12,6,NOW()),
('2017-03-21 17:33:00',600000,12,24,NOW()),
('2017-03-21 17:40:00',-2000,12,1,NOW()),
('2017-03-21 19:02:00',-28850,12,10,NOW()),
('2017-03-21 19:02:15',-50,12,10,NOW()),
('2017-03-21 19:27:00',-550000,12,29,NOW()),
('2017-03-21 21:08:00',-15000,12,17,NOW());

CALL ImportDaily();


INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 14, 'Even more data');

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-22 07:26:00',-2400,14,1,NOW()),
('2017-03-22 13:12:51',-13800,14,6,NOW()),
('2017-03-22 13:12:56',100,14,15,NOW()),
('2017-03-22 13:47:00',-900,14,3,NOW()),
('2017-03-22 18:56:00',-2000,14,1,NOW()),
('2017-03-22 19:47:00',-5800,14,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-22 22:21:00',14,'false',1510538.2,55300,0,1512934.07,95100,0,NOW());

CALL ImportDaily();

