SELECT (SELECT
         COUNT(*) AS num_tested_missing
       FROM schools
       WHERE percent_tested IS NULL),
       COUNT(DISTINCT school_name) AS num_schools
FROM schools;
