SELECT first_name, last_name 
FROM HR.employees
WHERE employee_id IN 
      		  (SELECT manager_id 
		  FROM HR.employees);
