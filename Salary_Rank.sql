-- What is the ranking of employees’ salary within each department?


select e.emp_id, e.full_name, e.salary, e.dept,
                 rank() over (partition by e.dept order by e.salary desc) as Salary_rank
from employees as e;