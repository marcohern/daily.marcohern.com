
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 14, 'Even more data');

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-22 07:26:00',-2400,14,1,NOW()),
('2017-03-22 13:12:51',-13800,14,6,NOW()),
('2017-03-22 13:12:56',100,14,15,NOW()),
('2017-03-22 13:47:00',-900,14,3,NOW()),
('2017-03-22 18:56:00',-2000,14,1,NOW()),
('2017-03-22 19:47:00',-5800,14,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-22 22:21:00',14,'false',1510538.2,55300,0,1512934.07,95100,0,NOW());

CALL ImportDaily();

