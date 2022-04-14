CREATE TABLE IF NOT EXISTS nomnom(
  NAME TEXT,
  NEIGHBOURHOOD TEXT,
  CUISINE TEXT,
  REVIEW INT,
  PRICE TEXT,
  HEALTH TEXT
);

INSERT INTO nomnom(NAME,NEIGHBOURHOOD,CUISINE,REVIEW,PRICE,HEALTH)
VALUES
  ("Peter","Brooklyn","Steak","4.4","$$$$","A"),
  ("Jongro","Midterm","Korean","3.5","$$","A"),
  ("Pocha","Midtown","Pizza","4","$$$","B"),
  ("Lighthouse","Queens","Chinese","3.9","$","A"),
  ("Minca","Downtown","American","4.6","$$$"," "),
  ("Marea","Chinatown","Chinese","3.0","$$"," "),
  ("Dirty Candy","Uptown","Italian","4.9","$$$$","B"),
  ("Di Fara Pizza","Brooklyn","Pizza","3.8 ","$$$","A"),
  ("Golden Unicorn","Uptown","Italian"," 3.8","$$","A");

SELECT * FROM nomnom;

SELECT DISTINCT NEIGHBOURHOOD
FROM nomnom;

SELECT DISTINCT CUISINE
FROM nomnom;

SELECT *
FROM nomnom
WHERE CUISINE = 'Chinese';

SELECT *
FROM nomnom
WHERE REVIEW >= 4;

SELECT *
FROM nomnom
WHERE CUISINE = 'Italian'
   AND PRICE = '$$$';


SELECT *
FROM nomnom
WHERE name LIKE '%Candy%';

SELECT *
FROM nomnom
WHERE NEIGHBOURHOOD = 'Midtown'
   OR NEIGHBOURHOOD = 'Downtown'
   OR NEIGHBOURHOOD = 'Chinatown';

SELECT *
FROM nomnom
ORDER BY REVIEW DESC
LIMIT 4;


