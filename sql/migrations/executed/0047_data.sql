
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),47, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-04 07:14:21',-2400,'CASH',47,1,NOW()),
('2017-05-04 07:55:00',-2100,'CASH',47,4,NOW()),
('2017-05-04 14:11:33',-15500,'CASH',47,6,NOW()),
('2017-05-04 15:45:00',-2400,'CASH',47,1,NOW()),
('2017-05-04 20:36:00',-3500,'CASH',47,35,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-04 21:50:00',47,'false',8532617.39,162300,0,8532594.02,188200,0,NOW());

