-- List the following details of each employee: employee number, 
-- last name, first name, gender, and salary.
select emp.emp_no, emp.first_name, emp.last_name, emp.gender, sal.salary
from employees emp
join salaries sal
on emp.emp_no = sal.emp_no
order by emp.emp_no asc;

-- List employees who were hired in 1986.
select * from employees where hire_date >= '1986-01-01' 
and hire_date <= '1986-12-31'
order by hire_date asc;

-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, 
-- first name, and start and end employment dates.
select dep.dept_name, dep.dept_no, man.emp_no, emp.first_name,
emp.last_name, sal.from_date, sal.from_date, sal.to_date from managers man
join departments dep
on man.dept_no = dep.dept_no
join employees emp
on man.emp_no = emp.emp_no
join salaries sal
on sal.emp_no = emp.emp_no
order by dep.dept_name asc, from_date asc;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from departments dep
join dept_x_emp dex
on dep.dept_no = dex.dept_no
join employees emp
on dex.emp_no = emp.emp_no
order by emp_no asc

-- List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' 
and last_name like 'B%'

-- List all employees in the Sales department, including 
-- their employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from departments dep
join dept_x_emp dex on dep.dept_no = dex.dept_no
join employees emp
on dex.emp_no = emp.emp_no
where dep.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name from 
departments dep
join dept_x_emp dex on dep.dept_no = dex.dept_no
join employees emp on dex.emp_no = emp.emp_no
where dep.dept_name in ('Development', 'Sales')
order by emp.emp_no asc

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select count(last_name), last_name
from employees
group by last_name order by count(last_name) desc