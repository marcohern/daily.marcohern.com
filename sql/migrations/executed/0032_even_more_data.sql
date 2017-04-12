
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 32, 'Even more data.');

INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-09 17:02:00',-16900,'CASH',32,8,NOW()),
('2017-04-09 17:58:57',-5600,'CASH',32,2,NOW()),
('2017-04-10 08:58:00',-2400,'CASH',32,1,NOW()),
('2017-04-10 09:41:00',-2000,'CASH',32,4,NOW()),
('2017-04-10 14:06:43',-18900,'CASH',32,6,NOW()),
('2017-04-10 14:45:00',-10150,'CASH',32,7,NOW()),
('2017-04-10 17:50:00',-2400,'CASH',32,1,NOW()),
('2017-04-10 20:34:00',300000,'CASH',32,24,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-04-10 20:34:00',32,'false',5337472.66,301350,0,5637761.78,57500,0,NOW());

