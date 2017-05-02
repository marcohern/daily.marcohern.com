
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),44, 'more data');

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-29 07:54:00',-13000,'CASH',44,19,NOW()),
('2017-04-29 13:07:00',-20900,'DEBIT',44,6,NOW()),
('2017-04-29 13:53:45',-13700,'CASH',44,2,NOW()),
('2017-04-29 15:45:00',-2400,'CASH',44,1,NOW()),
('2017-04-29 16:30:00',-1800,'CASH',44,35,NOW()),
('2017-04-29 20:00:00',-3500,'CASH',44,35,NOW()),
('2017-04-30 17:12:00',-14900,'CASH',44,8,NOW()),
('2017-04-30 18:11:00',-10900,'CASH',44,18,NOW()),
('2017-05-01 08:37:00',-6200,'CASH',44,4,NOW()),
('2017-05-01 11:52:00',-2300,'CASH',44,1,NOW()),
('2017-05-01 15:12:00',-34700,'CASH',44,6,NOW()),
('2017-05-01 15:14:00',-8100,'CASH',44,2,NOW()),
('2017-05-01 16:11:00',300000,'DEBIT',44,24,NOW()),
('2017-05-01 15:00:00',-6000,'CASH',44,19,NOW()),
('2017-05-01 18:20:00',-150000,'CASH',44,10,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-02 00:15:00',44,'false',8533747.28,267200,0,8834874.68,267500,0,NOW());

