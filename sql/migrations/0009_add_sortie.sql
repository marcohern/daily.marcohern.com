INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 3, 'Adding SORTIE hypercategory.');

ALTER TABLE trans_cat 
MODIFY hypercat ENUM(
  	'NONE','TRANSPORT','FOOD','PURCHASES','OTHER','SORTIE'
) NOT NULL DEFAULT 'NONE';

-- Categories
INSERT INTO trans_cat (id, name, group_id, hypercat, created, updated) VALUES
(22,'Sortie',3,'SORTIE',NOW(),NULL),
(23,'Helado',3,'FOOD',NOW(),NULL);

UPDATE trans_cat SET hypercat = 'SORTIE' WHERE id = 11;

