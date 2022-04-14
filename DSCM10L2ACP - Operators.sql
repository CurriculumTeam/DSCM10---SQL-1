CREATE TABLE IF NOT EXISTS Customer(
  customer_id TEXT PRIMARY KEY,
  cust_name TEXT,
  city TEXT,
  grade TEXT,
  Salesman_id TEXT
);
INSERT INTO Customer(customer_id,cust_name,city,grade,Salesman_id)
VALUES
  ("3002","Nick Rimando","New York","100","5001"),
  ("3007","Brad Davis","New York","200","5001"),
  ("3005","Graham Zusi","California","200","5002"),
  ("3008","Julian Green","London","300","5002"),
  ("3004","Fabian Johnson","Paris","300","5006"),
  ("3009","Geoff Cameron","Berlin","100","5003"),
  ("3003","jozy Altidor","Moscow","200","5007"),
  ("3001","Brad Guzan","London","","5005");
SELECT * 
FROM customer 
WHERE city = 'New York' OR grade>100;

SELECT * 
FROM customer 
WHERE city = 'New York' AND grade>100;