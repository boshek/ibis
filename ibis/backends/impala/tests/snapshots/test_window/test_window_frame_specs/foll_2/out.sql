SELECT sum(t0.`d`) OVER (ORDER BY t0.`f` ASC ROWS BETWEEN UNBOUNDED PRECEDING AND 2 FOLLOWING) AS `foo`
FROM alltypes t0