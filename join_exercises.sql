USE employees;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

select dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as ' Current Manager'
from dept_manager
join departments d on dept_manager.dept_no = d.dept_no
join employees e on dept_manager.emp_no = e.emp_no
where to_date like '999%';


select dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as ' Current Manager'
from dept_manager
join departments d on dept_manager.dept_no = d.dept_no
join employees e on dept_manager.emp_no = e.emp_no
where to_date like '999%' and e.gender = 'F';

select t.title, count(t.title)
from titles t
join dept_emp de on de.emp_no = t.emp_no
join departments d on de.dept_no = d.dept_no
where t.to_date > now()
and d.dept_name = 'Customer Service'
and de.to_date > curdate()
group by t.title;

select dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as ' Current Manager'
from dept_manager dm
    join departments d on dm.dept_no = d.dept_no
    join employees e on dm.emp_no = e.emp_no
    join salaries s on e.emp_no = s.emp_no
where dm.to_date > curdate()
and s.to_date > curdate()
order by d.dept_name;