
SELECT DATE(t.event_date) AS day

	 , IFNULL(SUM(r.value), 0) AS transport
	 , IFNULL(SUM(f.value), 0) AS food
	 , IFNULL(SUM(p.value), 0) AS purchases
	 , IFNULL(SUM(s.value), 0) AS sortie
	 , IFNULL(SUM(o.value), 0) AS other
     
	 , IFNULL(SUM(dr.value), 0) AS db_transport
	 , IFNULL(SUM(df.value), 0) AS db_food
	 , IFNULL(SUM(dp.value), 0) AS db_purchases
	 , IFNULL(SUM(ds.value), 0) AS db_sortie
	 , IFNULL(SUM(do.value), 0) AS db_other

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

GROUP BY day
ORDER BY day ASC
