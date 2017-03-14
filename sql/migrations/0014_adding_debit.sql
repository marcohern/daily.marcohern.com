
INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 8, 'Adding debit card operations and distinctions');

ALTER TABLE trans
ADD mode ENUM('CASH','DEBIT') NOT NULL DEFAULT 'CASH'
AFTER value;

UPDATE trans SET mode = 'DEBIT' WHERE value > 1000;

ALTER TABLE syncs
DROP df_bank, DROP df_pockets, DROP df_storage;

DROP TABLE IF EXISTS daily;

CREATE TABLE daily(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	day DATE NOT NULL,
	processed ENUM('true','false') NOT NULL DEFAULT 'false',

	transport NUMERIC(20,2) NOT NULL,
	food      NUMERIC(20,2) NOT NULL,
	purchases NUMERIC(20,2) NOT NULL,
	sortie    NUMERIC(20,2) NOT NULL,
	others    NUMERIC(20,2) NOT NULL,

	db_transport NUMERIC(20,2) NOT NULL,
	db_food      NUMERIC(20,2) NOT NULL,
	db_purchases NUMERIC(20,2) NOT NULL,
	db_sortie    NUMERIC(20,2) NOT NULL,
	db_others    NUMERIC(20,2) NOT NULL,

	cash   NUMERIC(20,2) NOT NULL,
	debit  NUMERIC(20,2) NOT NULL,

	input   NUMERIC(20,2) NOT NULL,
	balance NUMERIC(20,2) NOT NULL,
	output  NUMERIC(20,2) NOT NULL,

	INDEX ix_daily_day (day DESC)
);

UPDATE trans SET pdaily = 'false';


DROP PROCEDURE IF EXISTS ImportDaily;

DELIMITER $$

CREATE PROCEDURE ImportDaily()
BEGIN
	DECLARE dtEvent DATE;

	SELECT  MAX(DATE(event_date)) INTO dtEvent
	FROM trans;
    
    SET dtEvent = DATE_SUB(dtEvent, INTERVAL 2 DAY);
    
    INSERT INTO daily(day,
		transport, food, purchases, sortie, others,
        db_transport, db_food, db_purchases, db_sortie, db_others,
        cash, debit, input, balance, output) 	
	SELECT DATE(t.event_date) AS day

		 , IFNULL(SUM(r.value), 0) AS transport
		 , IFNULL(SUM(f.value), 0) AS food
		 , IFNULL(SUM(p.value), 0) AS purchases
		 , IFNULL(SUM(s.value), 0) AS sortie
		 , IFNULL(SUM(o.value), 0) AS others
		 
		 , IFNULL(SUM(dr.value), 0) AS db_transport
		 , IFNULL(SUM(df.value), 0) AS db_food
		 , IFNULL(SUM(dp.value), 0) AS db_purchases
		 , IFNULL(SUM(ds.value), 0) AS db_sortie
		 , IFNULL(SUM(do.value), 0) AS db_others

		 , IFNULL(SUM(cash.value), 0) AS cash
		 , IFNULL(SUM(deb.value), 0)  AS debit

		 , IFNULL(SUM(ti.value), 0) AS input
		 , IFNULL(SUM(t.value), 0) AS balance
		 , IFNULL(SUM(tt.value), 0) AS output
	# All transaction records
	FROM      trans     t
	# Each category for each of all transaction records
	LEFT JOIN trans_cat c  ON t.category_id = c.id

	# All negative transactions 
	LEFT JOIN trans     tt ON t.id = tt.id AND tt.value < 0

	# All positive transactions
	LEFT JOIN trans     ti ON t.id = ti.id AND ti.value > 0

	#All Negative CASH transactions
	LEFT JOIN trans     cash ON tt.id = cash.id AND cash.mode = 'CASH' 

	#All Negative DEBIT transactions
	LEFT JOIN trans     deb  ON tt.id = deb.id  AND deb.mode  = 'DEBIT' 

	LEFT JOIN trans_cat rc ON rc.id = c.id   AND rc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     r  ON r.id = cash.id AND r.category_id = rc.id

	LEFT JOIN trans_cat rf ON rf.id = c.id   AND rf.hypercat = 'FOOD'
	LEFT JOIN trans     f  ON f.id = cash.id AND f.category_id = rf.id

	LEFT JOIN trans_cat rp ON rp.id = c.id   AND rp.hypercat = 'PURCHASES'
	LEFT JOIN trans     p  ON p.id = cash.id AND p.category_id = rp.id

	LEFT JOIN trans_cat rs ON rs.id = c.id   AND rs.hypercat = 'SORTIE'
	LEFT JOIN trans     s  ON s.id = cash.id AND s.category_id = rs.id

	LEFT JOIN trans_cat ro ON ro.id = c.id   AND ro.hypercat = 'OTHER'
	LEFT JOIN trans     o  ON o.id = cash.id AND o.category_id = ro.id


	LEFT JOIN trans_cat drc ON drc.id = c.id  AND drc.hypercat = 'TRANSPORT'
	LEFT JOIN trans     dr  ON dr.id = deb.id AND dr.category_id = drc.id

	LEFT JOIN trans_cat drf ON drf.id = c.id  AND drf.hypercat = 'FOOD'
	LEFT JOIN trans     df  ON df.id = deb.id AND df.category_id = drf.id

	LEFT JOIN trans_cat drp ON drp.id = c.id  AND drp.hypercat = 'PURCHASES'
	LEFT JOIN trans     dp  ON dp.id = deb.id AND dp.category_id = drp.id

	LEFT JOIN trans_cat drs ON drs.id = c.id  AND drs.hypercat = 'SORTIE'
	LEFT JOIN trans     ds  ON ds.id = deb.id AND ds.category_id = drs.id

	LEFT JOIN trans_cat dro ON dro.id = c.id  AND dro.hypercat = 'OTHER'
	LEFT JOIN trans     do  ON do.id = deb.id AND do.category_id = dro.id
	WHERE t.pdaily = 'false'
	
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET pdaily = 'true' WHERE event_date < dtEvent;

END$$

DELIMITER ;

CALL ImportDaily();

