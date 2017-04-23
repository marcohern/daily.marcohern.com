
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 38, 'EVEN MORE DATA!');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-21 08:20:00',-2400,'CASH',38,1,NOW()),
('2017-04-21 09:09:00',-1800,'CASH',38,4,NOW()),
('2017-04-21 12:04:15',-15400,'CASH',38,6,NOW()),
('2017-04-21 13:52:06',-38200,'DEBIT',38,10,NOW()),
('2017-04-21 17:08:30',600000,'DEBIT',38,24,NOW()),
('2017-04-21 17:28:30',-2400,'CASH',38,1,NOW()),
('2017-04-21 19:17:00',-8000,'CASH',38,7,NOW()),
('2017-04-21 20:00:00',-3500,'CASH',38,7,NOW()),
('2017-04-22 09:00:00',-550000,'CASH',38,29,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-22 09:42:00',38,'false',4506164.18,85900,0,5146810.22,69600,0,NOW());

