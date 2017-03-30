

UPDATE trans 
SET pdaily = 'false'
  , updated = NOW()
WHERE event_date >= '2017-03-26';

DELETE FROM daily WHERE day >= '2017-03-26';

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
('2017-03-28 19:39:00',-5500,'CASH',25,8,NOW()),
('2017-03-28 19:50:00',-1500,'CASH',25,9,NOW()),
('2017-03-29 08:04:39',-2400,'CASH',26,1,NOW()),
('2017-03-29 08:46:00',-2300,'CASH',26,4,NOW()),
('2017-03-29 08:31:00',-2300,'CASH',26,1,NOW()),
('2017-03-29 19:33:00',-3500,'CASH',26,7,NOW()),
('2017-03-29 20:12:00',-1500,'CASH',26,7,NOW()),
('2017-03-29 21:01:48',-30700,'CASH',26,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-28 21:58:00',25,'false',6066573.74,171200,0,6066557.12,200200,0,NOW()),
('2017-03-29 21:01:50',26,'false',6035890.36,159200,0,6066573.74,171200,0,NOW());

