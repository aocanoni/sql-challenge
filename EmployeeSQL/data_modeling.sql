# Physical

Departments
-
dept_no VARCHAR(255)
dept_name VARCHAR(255)

Department_Employees
-
emp_no INT PK
dept_no VARCHAR(255) FK >- Departments.dept_no

Department_Manager
-
dept_no VARCHAR(225) FK >- Departments.dept_no
emp_no VARCHAR(225) FK >- Department_Employees.emp_no

Employees
-
emp_no VARCHAR(225) FK >- Department_Employees.emp_no
emp_title_id VARCHAR(255)
birth_date VARCHAR(255)
first_name VARCHAR(255)
last_name VARCHAR(255)
sex VARCHAR(255)
hire_date VARCHAR(255)

Salaries
-
emp_no VARCHAR(255) FK >- Department_Employees.emp_no
salary INT PK


Titles
-
title_id VARCHAR(255) FK >- Employees.emp_title_id
title VARCHAR(255) PK

