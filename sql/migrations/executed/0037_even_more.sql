
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 37, 'EVEN MORE DATA!');

UPDATE trans SET category_id = 27 WHERE category_id = 34;

DELETE FROM trans_cat WHERE id = 34;

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-18 07:17:00',-2400,'CASH',37,1,NOW()),
('2017-04-18 07:53:00',-3500,'CASH',37,2,NOW()),
('2017-04-18 13:13:00',-9000,'CASH',37,6,NOW()),
('2017-04-18 20:50:00',-15000,'CASH',37,17,NOW()),
('2017-04-19 07:55:00',-2400,'CASH',37,1,NOW()),
('2017-04-19 08:44:00',-2000,'CASH',37,4,NOW()),
('2017-04-19 12:41:00',-19000,'CASH',37,6,NOW()),
('2017-04-19 15:00:00',-2300,'CASH',37,3,NOW()),
('2017-04-19 18:15:00',100000,'DEBIT',37,24,NOW()),
('2017-04-19 18:24:00',-2400,'CASH',37,1,NOW()),
('2017-04-19 22:05:00',-4700,'CASH',37,8,NOW()),
('2017-04-19 20:30:00',-3500,'CASH',37,9,NOW()),
('2017-04-20 07:54:00',-2400,'CASH',37,1,NOW()),
('2017-04-20 08:40:00',-2100,'CASH',37,4,NOW()),
('2017-04-20 02:58:14',-18500,'CASH',37,6,NOW()),
('2017-04-20 19:00:00',-2400,'CASH',37,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-20 22:26:00',37,'false',5146810.22,69600,0,5247167.38,64150,0,NOW());

