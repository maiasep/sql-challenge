-- employees table
employees as ol
-
emp_no PK int 
emp_title_id varchar(10) FK >- titles.title_id
birth_date date
first_name varchar(30)
last_name varchar(30)
sex char(1)
hire_date date

-- titles table
titles
-
title_id varchar(10) PK
title varchar(40)

-- salaries table
salaries
-
emp_no int FK >- employees.emp_no
salary int

-- dept_emp table
dept_emp
-
emp_no int FK >- employees.emp_no
dept_no varchar FK >- departments.dept_no

-- dept_manager table
dept_manager
-
dept_no varchar(4) FK >- departments.dept_no
emp_no int FK >- employees.emp_no

-- departments table
departments
-
dept_no varchar(4) PK
dept_name varchar(20)
