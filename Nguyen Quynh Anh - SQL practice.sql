
---Exercies 1---
Select last_name, hire_date, department_id from employees
where department_id in (select department_id from employees where last_name = 'Zlotkey')


---Exercise 2---
Select employee_id, last_name, salary
from employees
where salary > (select AVG (salary) from employees)
order by salary asc


---Exercise 3---
Select employee_id, last_name, department_id
from employees
where department_id in (select department_id from employees where last_name like '%u%')


---Exercise 4---
Select e.last_name, d.department_id, e.job_id
from departments d join employees e on d.department_id = e.department_id
where d.location_id = 1700


---Exercise 5---
Select last_name, salary
from employees
where manager_id in (select employee_id from employees where last_name like 'King')

Select e.last_name, e.salary 
from employees e join employees manager on e.manager_id = manager.employee_id
where manager.last_name = 'King'


---Exercise 6---
select e.department_id, e.last_name, e.job_id
from departments d join employees e on d.department_id = e.department_id
where d.department_name like 'Executive'


---Exercise 7---
select employee_id, last_name, salary
from employees
where salary > (select salary = AVG(salary) from employees) and department_id in (select department_id from employees where last_name like '%u%') 


---Exercise 8---
select round (MAX (salary),0) as Maximum, round (Min (salary),0) as Minimum, round (sum (salary),0) as Sum, round (avg (salary),0) as Average
from employees


---Exercise 9---
select UPPER(LEFT(last_name,1))+LOWER(SUBSTRING(last_name,2,LEN(last_name))) as 'Last Name', len(last_name) as Length
from employees
where last_name like 'J%'or last_name like 'A%' or last_name like 'M%' 
order by last_name 


---Exercise 10---
select employee_id, last_name, salary, salary*1.155 as 'New Salary'
from employees


---Exercise 11---
select e.last_name, e.department_id, d.department_name
from employees e full join departments d on e.department_id = d.department_id


---Exercise 12---
Select e.employee_id
from employees e join employees manager on e.manager_id = manager.employee_id
where e.hire_date > manager.hire_date
and e.department_id in (select department_id from departments where location_id 
in (select location_id from locations where city = 'Toronto'))
