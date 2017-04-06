
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 30, 'even more data.');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(33,'Notaria',29,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-04 08:14:00',-2400,'CASH',30,1,NOW()),
('2017-04-04 09:05:00',-2800,'CASH',30,4,NOW()),
('2017-04-04 14:17:00',-18000,'CASH',30,33,NOW()),
('2017-04-04 14:24:40',-16900,'DEBIT',30,6,NOW()),
('2017-04-04 18:07:00',-2400,'CASH',30,1,NOW()),
('2017-04-04 19:00:00',-1800,'CASH',30,7,NOW()),
('2017-04-04 19:24:00',300000,'DEBIT',30,24,NOW()),
('2017-04-04 19:56:00',-15000,'CASH',30,17,NOW()),
('2017-04-05 06:06:23',-2400,'CASH',30,1,NOW()),
('2017-04-05 08:21:00',-2400,'CASH',30,1,NOW()),
('2017-04-05 08:55:00',-1800,'CASH',30,4,NOW()),
('2017-04-05 12:31:09',-13800,'CASH',30,6,NOW()),
('2017-04-05 13:02:00',-4400,'CASH',30,2,NOW()),
('2017-04-05 17:42:00',2400,'CASH',30,1,NOW()),
('2017-04-05 21:00:00',-9000,'CASH',30,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-05 09:25:00',30,'false',5717714.8,287700,0,6035866.74,36500,0,NOW()),
('2017-04-05 22:37:00',30,'false',5717714.8,254500,0,5717714.8,287700,0,NOW());

UPDATE trans SET value = -value WHERE event_date = '2017-04-05 17:42:00';

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-06 19:00:00',-3600,'CASH',30,7,NOW());


