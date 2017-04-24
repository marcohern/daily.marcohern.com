
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 39, 'AND YET EVEN MORE DATA!');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-22 13:02:00',-16900,'CASH',39,6,NOW()),
('2017-04-22 13:22:00',-6500,'CASH',39,7,NOW()),
('2017-04-22 14:53:00',-9800,'CASH',39,7,NOW()),
('2017-04-22 15:53:00',-5900,'CASH',39,10,NOW()),
('2017-04-22 18:20:00',-3800,'CASH',39,10,NOW()),
('2017-04-23 17:40:49',-28100,'DEBIT',39,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-23 23:21:00',39,'false',4478076.52,43000,0,4506164.18,85900,0,NOW());

