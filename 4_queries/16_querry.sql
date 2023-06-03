SELECT cohorts.name AS cohort, avg(completed_at - started_at)
as average_assistance_request_duration 
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY average_assistance_request_duration DESC
LIMIT 1;