
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),45, 'more data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(35,'Bebida',45,'FOOD',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-02 08:03:00',-2400,'CASH',45,1,NOW()),
('2017-05-02 08:49:00',-2000,'CASH',45,4,NOW()),
('2017-05-02 17:13:00',-20900,'CASH',45,6,NOW()),
('2017-05-02 18:01:00',-2400,'CASH',45,1,NOW()),
('2017-05-02 20:48:00',-3500,'CASH',45,35,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-02 23:43:00',45,'false',8532570.65,237200,0,8533747.28,267200,0,NOW());

