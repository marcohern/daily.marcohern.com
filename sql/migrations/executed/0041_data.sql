
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),41, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-25 07:57:00',-2400,'CASH',41,1,NOW()),
('2017-04-25 08:38:00',-2000,'CASH',41,4,NOW()),
('2017-04-25 14:34:46',-14800,'CASH',41,6,NOW()),
('2017-04-25 18:54:00',-2400,'CASH',41,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-25 19:58:00',41,'false',9135199.62,85500,0,4368226.38,111100,0,NOW());

