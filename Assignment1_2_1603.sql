-- create a table
CREATE TABLE Employee_Info (
  EmpID numeric,
  EmpFname varchar(10),
  EmpLname varchar(10),
  Department varchar(10),
  Project varchar(10),
  Address varchar(20),
  DOB varchar(10),
  Gender varchar(10)
);
-- insert some values
INSERT INTO Employee_Info VALUES (1,'Sanjay','Mehra','HR','p1','Hyderabad(HYD)','01/12/1976','M');
INSERT INTO Employee_Info VALUES (2,'Ananya','Mishra','Admin','p2','Delhi(DEL)','02/05/1968','F');
INSERT INTO Employee_Info VALUES (3,'Rohan','Diwan','Account','p3','Mumbai(BOM)','01/01/1980','M');
INSERT INTO Employee_Info VALUES (4,'Sonia','Kulkarni','HR','p1','Hyderabad(HYD)','02/05/1992','F');
INSERT INTO Employee_Info VALUES (5,'Ankit','Kapoor','Admin','p2','Delhi(DEL)','03/07/1994','M');

SELECT * FROM Employee_Info where EmpFname like 'S%';