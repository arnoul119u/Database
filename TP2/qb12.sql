SELECT department_name 
FROM HR.departments
WHERE department_id NOT IN 
      		    (SELECT department_id 
		    FROM HR.employees 
		    WHERE department_id IS NOT NULL);
