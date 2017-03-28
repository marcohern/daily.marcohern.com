
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 24, 'fixes and data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-25 14:35:26',-2600,'CASH',24,7,NOW()),
('2017-03-25 14:54:00',-2500,'CASH',24,7,NOW()),
('2017-03-26 19:34:14',-25900,'CASH',24,8,NOW()),
('2017-03-26 20:15:00',-2300,'CASH',24,9,NOW()),
('2251-09-19 00:00:00',-2500,'CASH',24,1,NOW()),
('2251-09-19 00:00:00',-1300,'CASH',24,14,NOW()),
('2134-06-23 00:00:00',-1700,'CASH',24,4,NOW()),
('2134-06-23 00:00:00',-15500,'CASH',24,6,NOW()),
('2134-06-23 00:00:00',-2200,'CASH',24,3,NOW()),
('2017-03-27 00:00:00',-2400,'CASH',24,1,NOW()),
('2017-03-27 00:00:00',-3500,'CASH',24,7,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-25 23:58:00',24,'false',6066523.88,257100,0,6066523.88,262700,0,NOW()),
('2017-03-27 07:30:00',24,'false',6066557.12,229300,0,6066523.88,257100,0,NOW()),
('2017-03-27 00:00:00',24,'false',6066557.12,200200,0,6066557.12,229300,0,NOW());

