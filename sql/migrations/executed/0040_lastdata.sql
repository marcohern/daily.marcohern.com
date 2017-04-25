
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 40, 'Finally more data!');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-24 08:25:00',-2400,'CASH',40,1,NOW()),
('2017-04-24 09:10:00',-2800,'CASH',40,4,NOW()),
('2017-04-24 15:01:00',-20800,'CASH',40,6,NOW()),
('2017-04-24 15:32:00',-9750,'DEBIT',40,18,NOW()),
('2017-04-24 18:32:00',-2400,'CASH',40,1,NOW()),
('2017-04-24 21:31:00',100000,'DEBIT',40,24,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-24 21:31:01',40,'false',4368226.38,111100,0,4478076.52,43000,0,NOW());

