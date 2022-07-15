SELECT
  school_name,
  average_math
FROM schools
WHERE average_math >= 640
ORDER BY average_math DESC;
