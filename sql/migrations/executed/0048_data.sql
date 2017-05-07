
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),48, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-05 08:36:00',-2400,'CASH',48,1,NOW()),
('2017-05-05 09:20:00',-2100,'CASH',48,4,NOW()),
('2017-05-05 13:40:00',-15500,'CASH',48,6,NOW()),
('2017-05-05 10:46:00',-2400,'CASH',48,1,NOW()),
('2017-05-05 21:19:41',-27900,'CASH',48,8,NOW()),
('2017-05-06 17:23:46',-28100,'CASH',48,6,NOW()),
('2017-05-06 18:16:00',-31850,'CASH',48,10,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-07 13:50:00',48,'false',8532887.5,52050,0,8532617.39,162300,0,NOW());

