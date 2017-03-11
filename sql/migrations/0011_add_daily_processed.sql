

INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 5, 'Adding processed column to daily table');

ALTER TABLE daily
  ADD processed ENUM('true','false') NOT NULL DEFAULT 'false'
  AFTER day;


