SELECT
  RANK() OVER (ORDER BY SUM(num) DESC) AS name_rank,
  first_name,
  SUM(num)
FROM baby_names
WHERE sex = 'F'
GROUP BY first_name
LIMIT 10;
