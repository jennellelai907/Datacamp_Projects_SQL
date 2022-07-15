SELECT
  borough,
  COUNT(school_name) AS num_schools,
  SUM(average_math + average_reading + average_writing) / COUNT(school_name) AS average_borough_sat
FROM schools
GROUP BY borough
ORDER BY average_borough_sat DESC;
