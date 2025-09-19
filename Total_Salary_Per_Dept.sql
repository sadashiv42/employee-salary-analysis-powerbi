-- What is the total salary paid per department?


select distinct d.dept_name, sum(e.salary)
               over (partition by e.dept) as "Total Salary"
from employees as e join department as d
on e.dept = d.dept_name order by "Total Salary" desc;