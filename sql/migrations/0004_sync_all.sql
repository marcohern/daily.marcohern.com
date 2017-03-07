-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(15,'Monedas',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, category_id, created) VALUES
('2017-03-04 10:55',200,15,NOW()),
('2017-03-04 14:44',-30700,6,NOW()),
('2017-03-04 16:25',-7600,10,NOW()),
('2017-03-05 15:50',-2300,1,NOW()),
('2017-03-05 17:50',-6600,10,NOW()),
('2017-03-05 19:05',-13000,9,NOW()),
('2017-03-05 20:02',-2300,1,NOW()),
('2017-03-06 07:50',-2400,1,NOW()),
('2017-03-06 09:45',-8300,2,NOW()),
('2017-03-06 09:45',-19000,6,NOW()),
('2017-03-06 17:31',-2400,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-04 22:02',2921714.31,36450,0,2952414.31,44050,0,30700,7600,0,NOW()),
('2017-03-05 20:38',2821599.51,105050,0,2921714.31,36450,0,100114.8,-68600,0,NOW()),
('2017-03-06 20:41',2821207.23,73050,0,2821599.51,105050,0,392.28,32000,0,NOW());

