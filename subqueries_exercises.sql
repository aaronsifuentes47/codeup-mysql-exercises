use employees;

select *
from employees
where hire_date = (
    select hire_date from employees where emp_no = 101010
    );

select title, count(title)
from titles t
    join employees e
        on t.emp_no = e.emp_no
where e.first_name = 'Aamod'
group by title;

select first_name, last_name
from dept_manager
         join departments d on dept_manager.dept_no = d.dept_no
         join employees e on dept_manager.emp_no = e.emp_no
where to_date like '999%' and e.gender = 'F';