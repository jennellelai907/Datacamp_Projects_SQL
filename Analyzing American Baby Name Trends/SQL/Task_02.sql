SELECT
  first_name,
  SUM(num),
  CASE
    WHEN COUNT(first_name) > 80 THEN 'Classic'
    WHEN COUNT(first_name) > 50 THEN 'Semi-classic'
    WHEN COUNT(first_name) > 20 THEN 'Semi-trendy'
    ELSE 'Trendy'
  END AS popularity_type
FROM baby_names
GROUP BY first_name
ORDER BY first_name;
