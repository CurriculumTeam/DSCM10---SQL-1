CREATE TABLE IF NOT EXISTS emp_dep(
  dpt_code TEXT,
  dpt_name TEXT,
  Salary TEXT
);
INSERT INTO emp_dep(dpt_code,dpt_name,Salary)
VALUES
  ("57","IT","65000"),
  ("63","Finance","15000"),
  ("47","HR","240000"),
  ("27","RD","55000"),
  ("89","QC","75000");

SELECT SUM(Salary)
FROM emp_dep;

SELECT COUNT(Salary)
FROM emp_dep;

SELECT MIN(Salary)
FROM emp_dep;

SELECT Max(Salary)
FROM emp_dep;

SELECT AVG(Salary)
FROM emp_dep;