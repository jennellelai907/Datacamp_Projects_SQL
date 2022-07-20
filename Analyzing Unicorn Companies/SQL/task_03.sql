WITH unicorn AS (
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
        AND valuation >= 1000000000
)
SELECT
    industry,
    year,
    count(unicorn_company) AS num_unicorns,
    ROUND(AVG(valuation) / 1000000000, 2) AS average_valuation_billions
FROM
    unicorn
WHERE
    industry IN (
        'Fintech',
        'Internet software & services',
        'E-commerce & direct-to-consumer'
    )
GROUP BY
    industry,
    year
ORDER BY
    industry,
    year DESC;
