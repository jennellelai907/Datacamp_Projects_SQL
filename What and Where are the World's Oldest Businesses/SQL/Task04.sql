SELECT
  business,
  year_founded,
  country_code,
  category
FROM
  businesses
  LEFT JOIN categories ON businesses.category_code = categories.category_code
WHERE
  year_founded < 1000
ORDER BY
  year_founded;
