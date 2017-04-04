
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 29, 'more data.');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-03 08:34:00',-2400,'CASH',29,1,NOW()),
('2017-04-03 09:13:00',-2800,'CASH',29,4,NOW()),
('2017-04-03 12:09:00',-21100,'CASH',29,6,NOW()),
('2017-04-03 15:00:00',-2200,'CASH',29,7,NOW()),
('2017-04-03 18:00:00',-2400,'CASH',29,1,NOW()),
('2017-04-03 19:11:00',-3500,'CASH',29,7,NOW()),
('2017-04-03 20:39:00',-3500,'CASH',29,7,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-04 06:37:00',29,'false',6035866.74,36500,0,6035784.09,138500,0,NOW());

CALL ImportDaily();

