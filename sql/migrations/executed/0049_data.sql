
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),49, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-07 17:02:00',-16900,'CASH',49,8,NOW()),
('2017-05-07 17:36:47',-5700,'CASH',49,2,NOW()),
('2017-05-08 08:23:00',-2400,'CASH',49,1,NOW()),
('2017-05-08 12:59:06',-15500,'CASH',49,6,NOW()),
('2017-05-08 17:49:00',-2400,'CASH',49,1,NOW()),
('2017-05-08 19:59:00',-3500,'CASH',49,35,NOW()),
('2017-05-08 22:00:00',500,'CASH',49,15,NOW());


INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-08 22:00:00',49,'false',8532710.87,6150,0,8532887.5,52050,0,NOW());

