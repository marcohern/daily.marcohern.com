
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 22, 'more data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(30,'Sueldo',22,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-24 07:26:00',-2400,'CASH',22,1,NOW()),
('2017-03-24 11:02:00',4867000,'DEBIT',22,30,NOW()),
('2017-03-24 12:03:11',-22000,'CASH',22,6,NOW()),
('2017-03-24 12:29:45',-9800,'DEBIT',22,7,NOW()),
('2017-03-24 17:33:00',-2000,'CASH',22,1,NOW()),
('2017-03-24 18:26:00',300000,'CASH',22,24,NOW()),
('2017-03-24 18:38:00',-17500,'CASH',22,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-24 11:07:00',22,'false',6377546.46,27400,0,1510542.33,29800,0,NOW()),
('2017-03-24 22:15:00',22,'false',6067746.46,2850000,0,6377546.46,27400,0,NOW());

