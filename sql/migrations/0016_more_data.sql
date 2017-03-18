INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 10, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(26,'Donación',10,'OTHER',NOW(),NULL),
(27,'Cerveza',10,'SORTIE',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-16 08:07:49',-2400,10,1,NOW()),
('2017-03-16 08:50:23',-2700,10,4,NOW()),
('2017-03-16 15:36:00',-15500,10,6,NOW()),
('2017-03-16 17:28:00',-10000,10,26,NOW()),
('2017-03-16 17:36:00',-2400,10,1,NOW()),
('2017-03-16 18:16:00',100000,10,24,NOW()),
('2017-03-16 18:22:00',-2800,10,7,NOW()),
('2017-03-16 19:20:00',-3500,10,23,NOW()),
('2017-03-16 20:10:00',-3000,10,27,NOW()),
('2017-03-16 20:45:00',-3000,10,27,NOW()),
('2017-03-17 07:20:00',-2400,10,1,NOW()),
('2017-03-17 08:21:00',-2800,10,4,NOW()),
('2017-03-17 13:55:36',-15500,10,6,NOW()),
('2017-03-17 17:26:18',-2000,10,1,NOW()),
('2017-03-18 09:30:00',-2400,10,1,NOW()),
('2017-03-18 14:02:52',-24800,10,6,NOW()),
('2017-03-18 14:48:00',-5700,10,2,NOW()),
('2017-03-18 15:53:00',-2400,10,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-16 23:37:00',10,'false',2261594.47,94900,0,2361619.8,40200,0,NOW()),
('2017-03-17 19:07:37',10,'false',2261200.66,72200,0,2261594.47,94900,0,NOW()),
('2017-03-18 15:53:00',10,'false',2236406.85,61700,0,2261200.66,72200,0,NOW());

CALL ImportDaily();

