SELECT
  min(year_founded) as oldest,
  continent
FROM
  businesses
  INNER JOIN countries USING(country_code)
GROUP BY
  continent
ORDER BY
  oldest;
