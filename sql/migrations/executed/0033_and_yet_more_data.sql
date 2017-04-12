
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 32, 'And yet, even more data.');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-11 08:26:00',-2400,'CASH',33,1,NOW()),
('2017-04-11 09:06:00',-2100,'CASH',33,4,NOW()),
('2017-04-11 12:53:16',-15500,'CASH',33,6,NOW()),
('2017-04-11 17:07:00',-2400,'CASH',33,1,NOW()),
('2017-04-11 17:45:00',-5350,'CASH',33,7,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-11 20:54:00',33,'false',5337488.1,273600,0,5337472.66,301350,0,NOW());

