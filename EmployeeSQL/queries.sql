SELECT employees.emp_no, employees.last_name, employees.first_name, salaries.salary
FROM employees
LEFT JOIN salaries ON salaries.emp_no = employees.emp_no

SELECT employees.first_name, employees.last_name
FROM employees
WHERE EXTRACT(year from "hire_date") = 1986 

SELECT employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments ON departments.dept_no = dept_manager.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no;

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name 
FROM employees
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

SELECT COUNT(employees.emp_no) AS "Unique", employees.last_name
FROM employees
GROUP BY employees.last_name
ORDER BY "Unique" DESC;
