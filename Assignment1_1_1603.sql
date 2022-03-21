-- create a table
CREATE TABLE Employee_Position (
  EmpID numeric,
  EmpPosition varchar(10),
  DateOfJoining varchar(10),
  Salary numeric
);
-- insert some values
INSERT INTO Employee_Position VALUES (1,'Manager','01/05/2022','500000');
INSERT INTO Employee_Position VALUES (2,'Executive','02/05/2022','75000');
INSERT INTO Employee_Position VALUES (3,'Manager','01/05/2022','90000');
INSERT INTO Employee_Position VALUES (2,'Lead','02/05/2022','85000');
INSERT INTO Employee_Position VALUES (1,'Executive','01/05/2022','300000');

SELECT * FROM Employee_Position WHERE Salary BETWEEN 50000 and 100000;