--Task 1: Find Employee's first name, last name, salary where employee name with A
--Answer
select first_name,last_name, salary
from employees
where first_name like 'A%';



--Task 2: Find Employee's first name, salary and salary with Bonous. Bonous will be 30% of salary.
--Answer
select first_name, salary, (salary+(salary*0.30)) as "Salary with Bonous"
from employees;



--Task 3: Show Employee's name, salary where employee salary is more than 2500
--Answer
select first_name||' '||last_name "Full name", salary
from employees
WHERE salary > 2500;



--Task 4: Show Employee's name, salary in ascending order.
--Answer
select first_name, last_name, salary
from employees
order by 1, 3;