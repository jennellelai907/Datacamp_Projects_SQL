SELECT
  business,
  year_founded,
  category,
  country,
  continent
FROM
  businesses
  INNER JOIN categories USING(category_code)
  INNER JOIN countries USING(country_code);
