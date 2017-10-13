SELECT employee_id, first_name, last_name 
FROM HR.employees
JOIN HR.departments ON HR.departments.department_id = HR.employees.department_id
JOIN HR.locations ON HR.locations.location_id = HR.departments.location_id
WHERE lower(city) = 'southlake';


SELECT employee_id, first_name, last_name
FROM HR.employees, HR.departments, HR.locations
WHERE HR.departments.department_id = HR.employees.department_id
      AND HR.locations.location_id = HR.departments.location_id
      AND lower(city) = 'southlake';


SELECT employee_id, first_name, last_name
FROM HR.employees
WHERE department_id IN
      (SELECT department_id 
      FROM HR.departments 
      WHERE location_id IN
      	   (SELECT location_id
	   FROM HR.locations
	   WHERE lower(city) = 'southlake'));
