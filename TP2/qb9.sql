SELECT first_name, last_name, NVL(TO_CHAR(commission_pct), 'pas de commission') commission 
FROM HR.employees
ORDER BY first_name, last_name ASC;
