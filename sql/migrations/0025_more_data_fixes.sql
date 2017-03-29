
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 25, 'fixes and data');

UPDATE trans 
SET event_date = '2017-03-26' 
  , updated = NOW()
WHERE YEAR(event_date) = 2251 AND YEAR(event_date) = 2134;

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(32,'Papeleria',25,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-28 07:46:00',-2400,'CASH',25,1,NOW()),
('2017-03-28 08:26:00',-1700,'CASH',25,4,NOW()),
('2017-03-28 12:41:34',-12900,'CASH',25,6,NOW()),
('2017-03-28 13:02:00',-800,'CASH',25,3,NOW()),
('2017-03-28 05:40:00',-2400,'CASH',25,1,NOW()),
('2017-03-28 07:17:00',-1800,'CASH',25,32,NOW()),
('2017-03-28 00:00:00',-5500,'CASH',25,8,NOW()),
('2017-03-28 00:00:00',-1500,'CASH',25,9,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-28 00:00:00',25,'false',6066573.74,171200,0,6066557.12,200200,0,NOW());

