SELECT
  continent,
  category,
  count(business) as n
FROM
  businesses
  INNER JOIN categories USING(category_code)
  INNER JOIN countries USING(country_code)
GROUP BY
  continent,
  category
ORDER BY
  continent,
  category;
