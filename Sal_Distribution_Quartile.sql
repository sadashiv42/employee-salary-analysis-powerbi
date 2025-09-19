-- What is the salary distribution quartile in each department?


select e.emp_id, e.full_name, d.dept_name, e.salary,
                  ntile(4) over (partition by d.dept_name order by salary desc) as Sal_Quartile
from employees as e join department as d
on e.dept = d.dept_name;

