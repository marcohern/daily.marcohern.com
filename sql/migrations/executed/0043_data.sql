
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),43, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-28 08:23:00',-12000,'CASH',43,19,NOW()),
('2017-04-28 08:30:00',300000,'DEBIT',43,24,NOW()),
('2017-04-28 08:41:00',-8500,'CASH',43,4,NOW()),
('2017-04-28 10:58:00',-2300,'CASH',43,1,NOW()),
('2017-04-28 14:14:00',-2200,'CASH',43,3,NOW()),
('2017-04-28 17:57:00',-2400,'CASH',43,1,NOW()),
('2017-04-28 18:43:00',-21100,'CASH',43,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-28 20:37:00',43,'false',8834874.68,267500,0,9134849.66,17800,0,NOW());



