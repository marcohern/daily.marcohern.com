
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 34, 'More data.');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-12 07:36:00',-2400,'CASH',34,1,NOW()),
('2017-04-12 08:22:00',-2800,'CASH',34,4,NOW()),
('2017-04-12 13:50:00',-21100,'CASH',34,6,NOW()),
('2017-04-12 15:37:00',-2650,'CASH',34,7,NOW()),
('2017-04-12 17:26:00',-2400,'CASH',34,1,NOW()),
('2017-04-12 20:17:00',-3500,'CASH',34,7,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-13 14:42:00',34,'false',5328333.5,238750,0,5337488.1,273600,0,NOW());

UPDATE migrations SET group_id = 33 where id = 29;

