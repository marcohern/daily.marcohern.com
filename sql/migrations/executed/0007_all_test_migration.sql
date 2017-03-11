INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 1, 'First Migration record');

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-07 07:24',1,'false',2821214.18,30150,0,2821207.23,73050,0,-6.95,42900,0,NOW()),
('2017-03-08 19:21',1,'false',2721222.67,96450,0,2821214.18,30150,0,99991.51,-66300,0,NOW());

-- Trans
INSERT INTO trans (event_date, value, group_id, processed, category_id, created) VALUES
('2017-03-07 07:20',-2400,1,'false',1,NOW()),
('2017-03-07 01:50',-18500,1,'false',6,NOW()),
('2017-03-07 03:12',-4200,1,'false',2,NOW()),
('2017-03-07 03:46',-5600,1,'false',16,NOW()),
('2017-03-07 06:02',-2000,1,'false',1,NOW()),
('2017-03-08 08:01',-15000,1,'false',17,NOW()),
('2017-03-08 08:03',-2400,1,'false',1,NOW()),
('2017-03-08 09:32',-7600,1,'false',2,NOW()),
('2017-03-08 12:53',-10500,1,'false',6,NOW()),
('2017-03-08 13:40',-6100,1,'false',18,NOW()),
('2017-03-08 18:00',-2000,1,'false',1,NOW());

-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(16,'Regalo',NOW(),NULL),
(17,'Aseo',NOW(),NULL),
(18,'Postre',NOW(),NULL);

