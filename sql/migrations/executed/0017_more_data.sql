
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 11, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(28,'Pestramo',11,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-18 20:40:00',-10000,11,8,NOW()),
('2017-03-19 07:13:00',-3400,11,4,NOW()),
('2017-03-19 07:15:00',-2300,11,1,NOW()),
('2017-03-19 07:50:00',-2800,11,5,NOW()),
('2017-03-19 10:44:00',-2000,11,5,NOW()),
('2017-03-19 10:46:00',-1600,11,5,NOW()),
('2017-03-19 11:07:00',-2300,11,1,NOW()),
('2017-03-19 11:59:00',-6000,11,1,NOW()),
('2017-03-19 14:50:00',-20000,11,6,NOW()),
('2017-03-19 15:15:00',-8000,11,7,NOW()),
('2017-03-19 15:25:00',-3000,11,28,NOW()),
('2017-03-19 19:48:00',-8100,11,7,NOW()),
('2017-03-19 20:30:00',0,11,19,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-19 20:30:00',11,'false',2236313.77,12200,0,2236406.85,61700,0,NOW());


CALL ImportDaily();

