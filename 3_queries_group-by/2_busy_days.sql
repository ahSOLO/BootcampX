SELECT day, count(assignments.id) 
FROM assignments
GROUP BY day
HAVING count(assignments.id) >= 10
ORDER BY day;