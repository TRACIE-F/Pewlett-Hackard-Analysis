-------------------
-- CREATING TABLES
-------------------
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

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
    title VARCHAR NOT NULL,
    from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);


SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;
SELECT * FROM employees;

----------------------------------
-- RETIREMENT DATA (DELIVERABLE 1)
----------------------------------
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO
	empl_title
FROM
	employees e
	join titles t on e.emp_no = t.emp_no
WHERE
	e.birth_date >= '1952-01-01'
	and e.birth_date <= '1955-12-31'

SELECT * FROM empl_title

-- De-duplicate titles

SELECT
	distinct on (et.emp_no) et.emp_no,
	et.first_name,
	et.last_name,
	et.title
INTO
	unique_titles
FROM
	empl_title et
WHERE
	et.to_date = '9999-01-01'
ORDER BY
	et.emp_no, et.to_date desc

SELECT * FROM unique_titles

-- Count the number of folks retiring soon

SELECT
	ut.title,
	count(ut.emp_no) as title_count
INTO
	retiring_titles
FROM
	unique_titles ut
GROUP BY
	ut.title
ORDER BY
	title_count desc

-- Print
SELECT * FROM retiring_titles

-----------------------------------------
-- MENTORSHIP ELIGIBILITY (DELIVERABLE 2)
-----------------------------------------
SELECT
	DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.dept_no,
	de.from_date,
	de.to_date,
	t.title
INTO
	mentorship_eligability
FROM
	employees e
	JOIN dept_emp de on e.emp_no = de.emp_no
	JOIN titles t on e.emp_no = t.emp_no
WHERE
	e.birth_date >= '1965-01-01'
	AND e.birth_date <= '1965-12-31'
	AND de.to_date = '9999-01-01'
	AND t.to_date = '9999-01-01'
ORDER BY
	e.emp_no

-- Print
SELECT * FROM mentorship_eligability







-- Code for table dropping
DROP TABLE mentorship_eligability CASCADE;
