-- Which employees are earning above the department average salary?


with dep_avg as (
             select e.emp_id, e.full_name, e.salary, e.dept,
			             avg(e.salary) over (partition by e.dept) as dep_avg_salary
			 from employees as e
)
select emp_id, full_name, salary, dept, dep_avg_salary
from dep_avg
where salary > dep_avg_salary;