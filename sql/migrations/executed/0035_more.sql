
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 35, 'MORE!');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(34,'Cerveza',34,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-13 17:23:00',-80900,'DEBIT',35,25,NOW()),
('2017-04-13 18:09:00',-14400,'CASH',35,7,NOW()),
('2017-04-13 19:36:00',-11000,'CASH',35,19,NOW()),
('2017-04-13 19:38:00',-3500,'CASH',35,34,NOW()),
('2017-04-13 22:43:00',-30000,'CASH',35,11,NOW()),
('2017-04-13 23:48:00',-13000,'CASH',35,19,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-13 23:54:00',35,'false',5247433.5,166200,0,5328333.5,238750,0,NOW());

