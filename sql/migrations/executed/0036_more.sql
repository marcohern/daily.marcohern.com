
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 36, 'EVEN MORE!');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-14 16:43:00',-18800,'CASH',36,6,NOW()),
('2017-04-14 17:17:02',-8000,'CASH',36,18,NOW()),
('2017-04-14 17:40:00',-3700,'CASH',36,7,NOW()),
('2017-04-16 22:00:00',-9000,'CASH',36,8,NOW()),
('2017-04-17 06:29:00',-2400,'CASH',36,1,NOW()),
('2017-04-17 07:13:00',-2100,'CASH',36,4,NOW()),
('2017-04-17 17:53:30',-11900,'CASH',36,6,NOW()),
('2017-04-17 18:00:00',-2400,'CASH',36,1,NOW()),
('2017-04-17 19:13:00',-8850,'CASH',36,7,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-17 20:53:00',36,'false',5247167.38,64150,0,5247433.5,166200,0,NOW());

