
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),42, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-26 07:47:34',-2400,'CASH',42,1,NOW()),
('2017-04-26 08:30:00',-1800,'CASH',42,4,NOW()),
('2017-04-26 12:31:45',-21600,'CASH',42,6,NOW()),
('2017-04-26 13:11:00',-5000,'CASH',42,18,NOW()),
('2017-04-26 17:32:00',-2400,'CASH',42,1,NOW()),
('2017-04-26 19:54:00',-3500,'CASH',42,7,NOW()),
('2017-04-26 21:13:00',-8000,'CASH',42,7,NOW()),
('2017-04-27 07:36:42',-2400,'CASH',42,1,NOW()),
('2017-04-27 08:18:00',-2100,'CASH',42,4,NOW()),
('2017-04-27 13:30:00',-15700,'CASH',42,6,NOW()),
('2017-04-27 14:01:00',-4400,'CASH',42,2,NOW()),
('2017-04-27 19:06:00',-2400,'CASH',42,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-28 00:05:00',42,'false',9134849.66,17800,0,9135199.62,85500,0,NOW());

