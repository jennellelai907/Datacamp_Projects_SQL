WITH sub
AS (SELECT
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
ORDER BY year DESC)


SELECT
  sub.first_name,
  COUNT(b.year) AS count_top_name
FROM sub
RIGHT JOIN baby_names AS b
  ON sub.year = b.year
  AND sub.first_name = b.first_name
WHERE sub.first_name IS NOT NULL
GROUP BY sub.first_name
ORDER BY count_top_name DESC;
