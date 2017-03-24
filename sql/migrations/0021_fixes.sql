

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 20, 'fixes and data');

UPDATE daily SET processed = 'false', updated=NOW() WHERE processed = 'true';

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-23 08:23:00',-2400,20,1,NOW()),
('2017-03-23 13:11:00',-21100,20,6,NOW()),
('2017-03-23 17:50:00',-2000,20,1,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-23 20:50:00',20,'false',1510542.33,29800,0,1510538.2,55300,0,NOW());

