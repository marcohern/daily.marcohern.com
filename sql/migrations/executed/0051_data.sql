
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),51, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2015-05-10 08:24:16',-2400,'CASH',50,1,NOW()),
('2015-05-10 09:07:41',-1800,'CASH',50,4,NOW()),
('2015-05-10 13:41:00',-15500,'CASH',50,6,NOW()),
('2015-05-10 14:03:28',-8600,'CASH',50,18,NOW()),
('2015-05-10 18:56:00',-7000,'CASH',50,27,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2015-05-10 07:40:00',50,'false',8231579.34,226200,0,8232734.24,261500,0,NOW());

