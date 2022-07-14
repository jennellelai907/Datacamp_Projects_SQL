SELECT
  category,
  count(*) as n
FROM
  categories
GROUP BY
  category
ORDER BY
  n DESC
LIMIT
  10;
