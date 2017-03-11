INSERT INTO migrations(created, group_id, description) VALUES
(NOW(), 4, 'Creating daily table and procedures to calculate daily expenses.');

DROP TABLE IF EXISTS daily;

CREATE TABLE daily(
	id BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	day DATE NOT NULL,

	transport NUMERIC(20,2) NOT NULL,
	food NUMERIC(20,2) NOT NULL,
	purchases NUMERIC(20,2) NOT NULL,
	sortie NUMERIC(20,2) NOT NULL,
	others NUMERIC(20,2) NOT NULL,

	total NUMERIC(20,2) NOT NULL,

	INDEX ix_daily_day (day DESC)
);

UPDATE trans SET processed = 'false';


DROP PROCEDURE IF EXISTS ImportDaily;

DELIMITER $$

CREATE PROCEDURE ImportDaily()
BEGIN
	DECLARE dtEvent DATE;

	SELECT  MAX(DATE(event_date)) INTO dtEvent
	FROM trans;
    
    SET dtEvent = DATE_SUB(dtEvent, INTERVAL 2 DAY);
	
    
    INSERT INTO daily(day, transport, food, purchases, sortie, others, total)
 	SELECT	DATE(t.event_date)		AS day,
	        IFNULL(SUM(r.value),0)	AS transport,
	        IFNULL(SUM(f.value),0)	AS food,
	        IFNULL(SUM(p.value),0)	AS purchases,
	        IFNULL(SUM(s.value),0)	AS sortie,
			IFNULL(SUM(o.value),0)	AS others,
			SUM(t.value)			AS total
	FROM		trans t
	LEFT JOIN	trans_cat c  ON t.category_id = c.id

	LEFT JOIN	trans_cat cr ON cr.id = c.id AND cr.hypercat = 'TRANSPORT'
	LEFT JOIN   trans r      ON r.id = t.id  AND r.category_id = cr.id

	LEFT JOIN	trans_cat cf ON cf.id = c.id AND cf.hypercat = 'FOOD'
	LEFT JOIN   trans f      ON f.id = t.id  AND f.category_id = cf.id

	LEFT JOIN	trans_cat cp ON cp.id = c.id AND cp.hypercat = 'PURCHASES'
	LEFT JOIN   trans p      ON p.id = t.id  AND p.category_id = cp.id

	LEFT JOIN	trans_cat cs ON cs.id = c.id AND cs.hypercat = 'SORTIE'
	LEFT JOIN   trans s      ON s.id = t.id  AND s.category_id = cs.id

	LEFT JOIN	trans_cat co ON co.id = c.id AND co.hypercat = 'OTHER'
	LEFT JOIN   trans o      ON o.id = t.id  AND o.category_id = co.id

	WHERE t.processed = 'false'
	GROUP BY day HAVING day < dtEvent
	ORDER BY day ASC;
    
    UPDATE trans SET processed = 'true' WHERE event_date > dtEvent;

END$$

DELIMITER ;

