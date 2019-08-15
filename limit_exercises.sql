USE employees;

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;

select concat_ws(' ',first_name, last_name) from employees;

