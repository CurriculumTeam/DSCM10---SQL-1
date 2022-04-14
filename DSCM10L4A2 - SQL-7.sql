CREATE TABLE IF NOT EXISTS DEPARTMENT(
  EMPLOYEE_ID TEXT,
  NAME TEXT,
  DEPARTMENT_ID TEXT,
  MANAGER_ID TEXT,
  SALARY TEXT
);
INSERT INTO DEPARTMENT(EMPLOYEE_ID,NAME,DEPARTMENT_ID,MANAGER_ID,SALARY)
VALUES
  ("100","STEVEN KING","90","100","24000"),
  ("101","NEENA KOCCHAR","90","100","17000"),
  ("102","LEX DEHAAN","90","102","9000"),
  ("103","BRUCE LEE","60","103","4800"),
  ("104","DIANA WILLS","60","103","25000"),
  ("105","VALLI PATOR","50","100","4200"),
  ("1973","LUV HAMI","60","102","5000"),
  ("106","DAVID AUSTIN","90","100","6000");

SELECT department_id "Department Code", 
COUNT(*) "No of Employees" 
FROM DEPARTMENT
GROUP BY department_id; 

  
SELECT department_id, SUM(salary) 
FROM  DEPARTMENT 
GROUP BY  department_id;


SELECT department_id  as "Department Code", 
COUNT(*) as  "No of Employees", 
SUM(salary) as "Total Salary" 
FROM  DEPARTMENT 
GROUP BY  department_id;


SELECT department_id "Department Code", 
SUM(salary) "Total Salary" 
FROM  DEPARTMENT 
WHERE MANAGER_ID = 103 
GROUP BY  department_id;



SELECT department_id, count(*) "No. of Employee" 
FROM DEPARTMENT 
GROUP BY  department_id 
HAVING count(*)>2;
