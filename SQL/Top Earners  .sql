SELECT
       months * salary AS total,
       COUNT(*)
FROM Employee
GROUP BY total
ORDER BY total DESC
LIMIT 1;