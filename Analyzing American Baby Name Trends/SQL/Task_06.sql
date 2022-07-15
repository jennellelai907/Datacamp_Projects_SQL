SELECT
  year,
  MAX(num) AS max_num
FROM baby_names
WHERE sex = 'M'
GROUP BY year
ORDER BY year;
