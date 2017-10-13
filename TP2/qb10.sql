SELECT INITCAP(first_name) first_name, INITCAP(last_name) last_name
FROM HR.employees
JOIN HR.jobs ON HR.jobs.job_id = HR.employees.job_id
WHERE salary > ((min_salary + max_salary) / 2)
ORDER BY first_name, last_name ASC;


SELECT INITCAP(first_name) first_name, INITCAP(last_name) last_name
FROM HR.employees
WHERE salary > (SELECT AVG(salary) FROM HR.employees);
