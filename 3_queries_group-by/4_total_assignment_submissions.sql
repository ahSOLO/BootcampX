SELECT cohorts.name as cohort, COUNT(assignment_submissions.id) as total_submissions
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;