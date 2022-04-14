CREATE TABLE IF NOT EXISTS emp_details(
  emp_id TEXT PRIMARY KEY,
  emp_fname TEXT,
  emp_lname TEXT,
  emp_dept TEXT
);
INSERT INTO emp_details(emp_id,emp_fname,emp_lname,emp_dept)
VALUES
  ("127323","Michale","Robbin","57"),
  ("432567","Carlos","Snares","63"),
  ("753673","Enric","dosio","57"),
  ("546367","Jhon","Snares","63"),
  ("567468","Joseph","Dosni","47"),
  ("545647","Zanifer","Emily","47"),
  ("646345","Kuleswar","Sitaram","57"),
  ("644634","Henrey","Gabriel","47"),
  ("467345","Alex","Manuel","57"),
  ("456356","George","Mardy","27"),
  ("535435","Mario","Saule","63"),
  ("535744","Alan","Snappy","27"),
  ("644356","Maria","Foster","57");

SELECT * 
 FROM emp_details 
  WHERE emp_dept= 57;

SELECT * 
 FROM emp_details 
  WHERE emp_lname= 'Snares';