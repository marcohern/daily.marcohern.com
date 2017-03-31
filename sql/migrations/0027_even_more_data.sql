
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 27, 'import more data');


-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-30 08:05:34',-2400,'CASH',27,1,NOW()),
('2017-03-30 13:44:26',-15900,'CASH',27,6,NOW()),
('2017-03-30 19:03:00',-2400,'CASH',27,1,NOW()),
('2017-03-30 20:24:00',-16400,'CASH',27,10,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-30 20:03:00',27,'false',6035784.09,138500,0,6035890.36,159200,0,NOW());

