create table departments (
	dept_no VARCHAR(30) primary key,
	dept_name VARCHAR not null
	);
		
create table dept_x_emp (
	emp_no serial not null,
	dept_no VARCHAR(30) References departments(dept_no),
	from_date DATE not null,
	to_date DATE
	);

create table managers (
	dept_no VARCHAR(30),
	emp_no serial not null,
	from_date DATE not null,
	to_date DATE
	);

create table employees (
	emp_no serial primary key,
	birth_date DATE not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	gender VARCHAR(1) not null,
	hire_date DATE not null
	);
	
create table salaries (
	emp_no serial primary key,
	salary double precision not null,
	from_date DATE not null,
	to_date DATE
	);

-- drop table titles
create table titles (
	emp_no int not null,
	title VARCHAR not null,
	from_date DATE not null,
	to_date DATE not null
	);
