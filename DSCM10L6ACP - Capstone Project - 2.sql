CREATE TABLE IF NOT EXISTS customers(
  customer_id TEXT,
  customer_name TEXT,
  contact_name TEXT,
  city TEXT,
  country TEXT,
  salary INT
);
INSERT INTO customers(customer_id,customer_name,contact_name,city,country,salary)
VALUES
  ("1","alfreds futterkiste","maria anders","Berlin","Germany","30000"),
  ("2","Ana helados","ana trujillo","Mexico DF","Mexico","25000"),
  ("3","Antonio moreno","antonio moreno","Mexico DF","Mexico","40000"),
  ("4","Around the horn","thomas hardy","London","UK","35000"),
  ("5","Berglungs","Christina","lulea","Sweden","15000"),
  ("6","David","Austin","Manngeim","Germany","20000"),
  ("7","Valli","Pataballa","Strasbourg","France","50000"),
  ("8","Diana","Lorentz","Madrid","Spain","45000"),
  ("9","John","Chen","Marseille","France","35000"),
  ("10","Ismael","Sciarra","London","UK","42000");

SELECT * FROM customers
WHERE customer_Name LIKE 'a%'; 

SELECT * FROM customers
WHERE customer_name LIKE '%or%';

SELECT * FROM customers
WHERE salary BETWEEN 20000 AND 35000;

SELECT DISTINCT country FROM customers;

SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT * FROM Customers
ORDER BY Country, customer_name; 