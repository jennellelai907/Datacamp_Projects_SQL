-- Find out unicorn company of 2019~2021
SELECT
    company_id AS unicorn_company,
    valuation,
    industry,
    date_part('year', date_joined) AS year
FROM
    funding
    LEFT JOIN dates USING(company_id)
    LEFT JOIN industries USING(company_id)
WHERE
    date_part('year', date_joined) >= 2019
    AND date_part('year', date_joined) <= 2021
    AND valuation >= 1000000000;
