-- Categories
INSERT INTO trans_cat (id, name, created, updated) VALUES
(14,'Limosna',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, category_id, value, created) VALUES
('2017-03-02 07:30',8,-29000,NOW()),
('2017-03-02 17:40',1,-2400,NOW()),
('2017-03-03 07:40',1,-2400,NOW()),
('2017-03-03 12:00',6,-21000,NOW()),
('2017-03-03 17:50',1,-2400,NOW()),
('2017-03-03 18:03',14,-400,NOW()),
('2017-03-03 18:33',2,-9400,NOW()),
('2017-03-03 21:06',8,-50000,NOW()),
('2017-03-03 22:12',9,-9500,NOW());

-- Syncs
INSERT INTO syncs (event_date, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-02 21:53',2952398.15,139150,0,2953590.07,177850,0,1191.91999999993,38700,0,NOW()),
('2017-03-04 08:02',2952414.31,44050,0,2952398.15,139150,0,-16.160000000149,95100,0,NOW());

