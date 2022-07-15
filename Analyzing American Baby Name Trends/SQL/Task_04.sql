SELECT
  first_name
FROM baby_names
WHERE sex = 'F'
AND year > 2015
AND first_name LIKE '%a'
GROUP BY first_name
ORDER BY SUM(num) DESC;
