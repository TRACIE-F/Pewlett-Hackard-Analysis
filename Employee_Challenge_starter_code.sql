-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) emp_no,
first_name,
last_name,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;


select
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.title,
	t.from_date,
	t.to_date
from
	employees e
	join titles t on e.emp_no = t.emp_no
where
	e.birth_date >= '1952'
	and e.birth_date <= '1955'

select 
	distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.title
from
	employees e
	join titles t on e.emp_no = t.emp_no
where
	e.birth_date >= '1952-01-01'
	and e.birth_date <= '1955-12-31'
	and t.to_date = '9999-01-01'
order by
	e.emp_no
limit 10


select 
	t.title,
	count(e.emp_no) as title_count
from
	employees e
	join titles t on e.emp_no = t.emp_no
where
	e.birth_date >= '1952-01-01'
	and e.birth_date <= '1955-12-31'
	and t.to_date = '9999-01-01'
group by
	t.title
order by
	title_count desc
	
	select
	distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.dept_no,
	de.from_date,
	de.to_date,
	t.title,
	t.from_date as title_from,
	t.to_date as title_to
from
	employees e
	join dept_emp de on e.emp_no = de.emp_no
	join titles t on e.emp_no = t.emp_no
where
	e.birth_date >= '1965-01-01'
	and e.birth_date <= '1965-12-31'
	and de.to_date = '9999-01-01'
	and t.to_date = '9999-01-01'
order by
	e.emp_no
limit 10

select
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.dept_no,
	de.from_date,
	de.to_date,
	t.title,
	t.from_date as title_from,
	t.to_date as title_to
from
	employees e
	join dept_emp de on e.emp_no = de.emp_no
	join titles t on e.emp_no = t.emp_no
where
	e.birth_date >= '1965-01-01'
	and e.birth_date <= '1965-12-31'
	and de.to_date = '9999-01-01'
order by
	e.emp_no, t.to_date desc
limit 10

	