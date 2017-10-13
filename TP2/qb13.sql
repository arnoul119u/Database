SELECT HR.jobs.job_title, count(*) 
FROM HR.employees
JOIN HR.jobs ON HR.jobs.job_id = HR.employees.job_id
GROUP BY HR.employees.job_title;
