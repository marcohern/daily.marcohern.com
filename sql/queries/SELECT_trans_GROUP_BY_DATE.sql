SELECT	DATE(t.event_date)		AS day,
		SUM(t.value)			AS total,
		IFNULL(SUM(r.value),0)	AS transport,
		IFNULL(SUM(f.value),0)	AS food,
		IFNULL(SUM(o.value),0)	AS other
FROM		trans t
LEFT JOIN	trans r ON r.id = t.id AND r.category_id  = 1
LEFT JOIN	trans f ON f.id = t.id AND f.category_id >= 2 AND f.category_id <= 9
LEFT JOIN	trans o ON o.id = t.id AND o.category_id >= 10
GROUP BY day
ORDER BY day ASC
