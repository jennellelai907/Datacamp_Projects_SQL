-- Define Top3 best-performing industries
WITH unicorn AS (
    SELECT
        company_id AS unicorn_company,
        industry,
        date_part('year', date_joined) AS year
    FROM
        funding
        LEFT JOIN dates USING(company_id)
        LEFT JOIN industries USING(company_id)
    WHERE
        date_part('year', date_joined) >= 2019
        AND date_part('year', date_joined) <= 2021
        AND valuation >= 1000000000
)
SELECT
    industry,
    count(unicorn_company)
FROM
    unicorn
GROUP BY
    industry
ORDER BY
    count DESC
LIMIT
    3;
