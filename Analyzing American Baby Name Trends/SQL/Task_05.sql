SELECT
  year,
  first_name,
  num,
  SUM(num) OVER (ORDER BY year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_olivias
FROM baby_names
WHERE first_name = 'Olivia';
