--Data Analysis

--List the employee number, last name, first name, sex, and salary of each employee
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp
LEFT JOIN salaries sal
	ON emp.emp_no = sal.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT * FROM employees emp;

SELECT emp.first_name, emp.last_name, emp.hire_date 
FROM employees emp 
WHERE EXTRACT(YEAR FROM TO_DATE(emp.hire_date, 'MM/DD/YYYY')) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM employees;

SELECT deptm.dept_no, dept.dept_name, deptm.emp_no, emp.last_name, emp.first_name 
FROM dept_manager deptm
LEFT JOIN departments dept
	ON deptm.dept_no = dept.dept_no
LEFT JOIN employees emp
	ON deptm.emp_no = emp.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT * FROM departments;
SELECT * FROM employees;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT * FROM employees;

SELECT emp.first_name, emp.last_name, emp.sex
FROM employees emp
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT dep.dept_name, emp.emp_no, emp.last_name, emp.first_name 
FROM employees emp 
LEFT JOIN dept_emp depte 
	ON emp.emp_no = depte.emp_no 
LEFT JOIN departments dep 
	ON depte.dept_no = dep.dept_no 
WHERE dep.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT dep.dept_name, emp.emp_no, emp.last_name, emp.first_name 
FROM employees emp 
LEFT JOIN dept_emp depte 
	ON emp.emp_no = depte.emp_no 
LEFT JOIN departments dep 
	ON depte.dept_no = dep.dept_no 
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT * FROM employees;

SELECT emp.last_name, COUNT(emp.last_name) AS "Last Name Count"
FROM employees emp
GROUP BY last_name
ORDER BY "Last Name Count" DESC;


