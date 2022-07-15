SELECT
  school_name,
  average_math + average_reading + average_writing AS average_sat
FROM schools
GROUP BY school_name
ORDER BY average_sat DESC
LIMIT 10;
