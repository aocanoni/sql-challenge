DROP TABLE departments;

CREATE TABLE departments (
    dept_key SERIAL   NOT NULL,
	dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_key)
);

CREATE TABLE dept_emp (
    dept_emp_key INTEGER   NOT NULL,
	emp_no INTEGER   NOT NULL,
    PRIMARY KEY (dept_emp_key),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_manager_key SERIAL   NOT NULL,
    PRIMARY KEY (dept_manager_key),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE employees (
    emp_key SERIAL   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL,
    PRIMARY KEY (emp_key),
    FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE salaries (
    sal_key SERIAL   NOT NULL,
    salary INTEGER   NOT NULL,
    PRIMARY KEY (sal_key),
    FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

CREATE TABLE titles (
    title_key SERIAL   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title),
    FOREIGN KEY (title_id) REFERENCES employees (emp_title_id)
);