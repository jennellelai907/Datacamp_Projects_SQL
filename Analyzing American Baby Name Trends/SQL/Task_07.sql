SELECT
  male_max.year,
  first_name,
  num
FROM baby_names
RIGHT JOIN (SELECT
  year,
  MAX(num) AS max_num
FROM baby_names
WHERE sex = 'M'
GROUP BY year
ORDER BY year) AS male_max
  ON baby_names.year = male_max.year
  AND baby_names.num = male_max.max_num
ORDER BY year DESC;
