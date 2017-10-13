SELECT department_name FROM HR.departments
JOIN HR.locations ON HR.locations.location_id = HR.departments.location_id
WHERE LOWER(city) != 'seattle';
