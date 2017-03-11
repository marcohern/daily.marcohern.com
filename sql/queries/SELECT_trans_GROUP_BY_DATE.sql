
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

GROUP BY day
ORDER BY day ASC
