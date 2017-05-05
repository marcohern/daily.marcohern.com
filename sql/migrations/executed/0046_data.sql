
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(),46, 'more data, add salary, update table to include salary');

-- Add Salary
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-04-25 11:00:00',4867000.00,'DEBIT',46,30,NOW());

-- Delete calculated day summary
DELETE FROM daily WHERE day = '2017-04-25';

-- reset record to be calculated.
UPDATE trans SET pdaily = 'FALSE' WHERE DATE(event_date) = '2017-04-25';

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(36,'Peluqueria',46,'PURCHASES',NOW(),NULL);

-- Trans
INSERT INTO trans (event_date, value, mode, group_id, category_id, created) VALUES
('2017-05-03 08:16:00',-2400,'CASH',46,1,NOW()),
('2017-05-03 09:00:00',-2000,'CASH',46,4,NOW()),
('2017-05-03 12:40:00',-9000,'CASH',46,6,NOW()),
('2017-05-03 19:00:00',-2400,'CASH',46,1,NOW()),
('2017-05-03 19:25:00',-400,'CASH',46,14,NOW()),
('2017-05-03 19:30:00',-15000,'CASH',46,17,NOW()),
('2017-05-03 20:07:00',-9000,'CASH',46,36,NOW()),
('2017-05-03 20:37:00',-8800,'CASH',46,8,NOW());

-- Syncs
INSERT INTO syncs (event_date, group_id, processed, bank, pockets, storage, pr_bank, pr_pockets, pr_storage, created) VALUES
('2017-05-03 21:17:00',46,'false',8532594.02,188200,0,8532570.65,237200,0,NOW());

