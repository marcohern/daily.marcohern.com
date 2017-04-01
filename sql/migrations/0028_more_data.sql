
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 28, 'end of month data.');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-31 07:40:00',-2400,'CASH',28,1,NOW()),
('2017-03-31 08:21:00',-1800,'CASH',28,4,NOW()),
('2017-03-31 13:01:19',-30600,'CASH',28,6,NOW()),
('2017-03-31 13:39:28',-7900,'CASH',28,7,NOW()),
('2017-03-31 21:45:56',-5000,'CASH',28,19,NOW()),
('2017-03-31 21:40:00',-16400,'CASH',28,11,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-01 09:22:00',28,'false',6035817.15,74400,0,6035784.09,138500,0,NOW());

