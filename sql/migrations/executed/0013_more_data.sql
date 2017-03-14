
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 7, 'Adding more data, before changing structure again');

INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(24,'Retiro Cajero',7,'OTHER',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, group_id, category_id, created) VALUES
('2017-03-11 18:39:26',-25900,7,8,NOW()),
('2017-03-11 19:45:21',-1100,7,9,NOW()),
('2017-03-12 20:28:00',-13900,7,8,NOW()),
('2017-03-12 20:37:00',-2400,7,18,NOW()),
('2017-03-12 08:03:00',-2400,7,1,NOW()),
('2017-03-12 08:52:00',-2800,7,4,NOW()),
('2017-03-12 13:30:21',-19200,7,6,NOW()),
('2017-03-12 13:58:59',-10100,7,18,NOW()),
('2017-03-12 15:23:47',-2000,7,1,NOW()),
('2017-03-12 19:28:00',100000,7,24,NOW()),
('2017-03-12 19:58:23',-5300,7,8,NOW());


-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, df_bank, df_pockets, df_storage, created) VALUES
('2017-03-11 21:05:00',7,'false',2570548.74,34750,0,2596448.74,35850,0,25900,1100,0,NOW()),
('2017-03-12 19:28:00',7,'false',2451259.22,101150,0,2570548.74,34750,0,119289.52,-66400,0,NOW());

