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

