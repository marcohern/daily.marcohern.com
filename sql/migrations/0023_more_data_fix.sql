
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 23, 'fixes and data');

UPDATE syncs SET pockets = 285000 WHERE event_date = '2017-03-24 22:15:00';

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(31,'Pago Citibank',23,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-03-25 07:00:00',-12600,'CASH',23,19,NOW()),
('2017-03-25 07:52:00',-2300,'CASH',23,10,NOW()),
('2017-03-25 08:10:00',-6000,'CASH',23,4,NOW()),
('2017-03-25 09:30:00',-2400,'CASH',23,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-25 12:11:00',23,'false',6066523.88,262700,0,6067746.46,285000,0,NOW());

