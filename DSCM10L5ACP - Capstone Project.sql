CREATE TABLE IF NOT EXISTS employees(
  employee_id TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  salary INT,
  department_id TEXT,
  manager_id TEXT
);
INSERT INTO employees(employee_id,first_name,last_name,email,salary,department_id,manager_id)
VALUES
  ("100","Steven","King","SKING","24000","90","0"),
  ("101","Neena","Kochhar","NKOCHHAR","17000","90","100"),
  ("102","Lex","De Haan","LDEHAAN","17000","90","100"),
  ("101","Alexander","Hunold","AHUNOLD","9000","100","100"),
  ("102","Bruce","Ernst","BERNST","6000","60","102"),
  ("101","David","Austin","DAUSTIN","4800","60","103"),
  ("102","Valli","Pataballa","VPATABAL","4800","60","103"),
  ("101","Diana","Lorentz","DLORENTZ","12008","60","103"),
  ("100","John","Chen","NGREENBE","9000","60","101"),
  ("100","Ismael","Sciarra","DFAVIET","8200","100","108"),
  ("102","Jose","Manuel","JCHEN","7800"," 100 ","101");



SELECT first_name,last_name,department_id,salary 
FROM employees
WHERE salary>8000; 

SELECT first_name, last_name, department_id
FROM employees
WHERE last_name = 'Manuel';

SELECT first_name, salary FROM employees ORDER BY salary;

SELECT employee_id, SUM (salary)
FROM employees
GROUP BY employee_id;

SELECT employee_id, AVG (salary)
FROM employees
GROUP BY employee_id;

SELECT * FROM employees
WHERE employee_id='101' AND first_name='Neena';

SELECT COUNT(first_name)
FROM employees;