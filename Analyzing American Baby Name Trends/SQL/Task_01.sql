postgresql:///names
SELECT
  first_name,
  SUM(num)
FROM baby_names
GROUP BY first_name
HAVING COUNT(year) = 101
ORDER BY sum DESC;
