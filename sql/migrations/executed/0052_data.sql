
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),52, 'more data, fixes on last data batch');

UPDATE syncs
SET event_date = '2015-05-11 07:40:00',
	group_id = 51
WHERE event_date = '2015-05-10 07:40:00';

UPDATE trans SET group_id = 51
WHERE event_date >= '2017-05-10 08:24:16';

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-11 08:15:00',-2400,'CASH',51,1,NOW()),
('2017-05-11 16:30:00',-3000,'CASH',51,16,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-11 22:53:00',51,'false',8231579.34,220800,0,8231579.34,226200,0,NOW());

UPDATE syncs
SET event_date = '2017-05-11 07:40:00',
	group_id = 51
WHERE event_date = '2015-05-11 07:40:00';