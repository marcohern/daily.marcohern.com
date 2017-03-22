
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 12, 'More data');

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(29,'Arriendo',12,'OTHER',NOW(),NULL);

UPDATE trans_cat
   SET name = 'Prestamo',
   updated = NOW()
 WHERE id = 28;

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-20 07:58:00',-2300,12,4,NOW()),
('2017-03-20 14:18:17',-22900,12,1,NOW()),
('2017-03-20 17:32:00',100000,12,6,NOW()),
('2017-03-20 17:43:00',-2000,12,24,NOW()),
('2017-03-20 18:40:00',-2300,12,1,NOW()),
('2017-03-21 06:58:00',-2400,12,0,NOW()),
('2017-03-21 07:41:00',-2700,12,1,NOW()),
('2017-03-21 13:53:47',-21000,12,4,NOW()),
('2017-03-21 17:33:00',600000,12,6,NOW()),
('2017-03-21 17:40:00',-2000,12,24,NOW()),
('2017-03-21 19:02:00',-28850,12,1,NOW()),
('2017-03-21 19:02:15',-50,12,10,NOW()),
('2017-03-21 19:27:00',-550000,12,10,NOW()),
('2017-03-21 21:08:00',-15000,12,0,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-03-20 19:33:48',12,'false',2113418.89,102100,0,2236313.77,12200,0,NOW()),
('2017-03-21 20:37:00',12,'false',1512934.07,95100,0,2113418.89,102100,0,NOW());

CALL ImportDaily();

