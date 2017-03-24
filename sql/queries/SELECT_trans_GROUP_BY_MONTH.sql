SELECT	LEFT(t.event_date,7) AS mdate,
		SUM(t.value) AS total
FROM trans AS t
WHERE t.value < 0
GROUP BY mdate;