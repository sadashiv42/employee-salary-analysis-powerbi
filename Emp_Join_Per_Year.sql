-- How many employees joined each year?


select d.dept_name,
        extract(year from e.hire_date) as join_year,
        count(e.emp_id) as total_joins
from employees as e
join department as d on e.dept = d.dept_name
group by d.dept_name, extract(year from e.hire_date)
order by join_year;