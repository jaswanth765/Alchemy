CREATE TABLE worker(
  worker_id numeric,
  first_name varchar(10),
  last_name varchar(10),
  salary numeric,
  joining_date varchar(20),
  department varchar(10)
);
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (001, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (002, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (003, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (004, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (005, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (006, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (007, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account');
INSERT INTO worker (worker_id,first_name,last_name,salary,joining_date,department) VALUES (008, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

CREATE TABLE bonus(
 worker_ref_id numeric,
 bonus_date varchar(20),
 bonus_amount numeric
);
INSERT INTO bonus (worker_ref_id, bonus_date, bonus_amount) VALUES (001,'2016-02-20 00:00:00',5000);
INSERT INTO bonus (worker_ref_id, bonus_date, bonus_amount) VALUES (002,'2016-06-11 00:00:00',3000);
INSERT INTO bonus (worker_ref_id, bonus_date, bonus_amount) VALUES (003,'2016-02-20 00:00:00',4000);
INSERT INTO bonus (worker_ref_id, bonus_date, bonus_amount) VALUES (001,'2016-02-20 00:00:00',4500);
INSERT INTO bonus (worker_ref_id, bonus_date, bonus_amount) VALUES (002,'2016-06-11 00:00:00',3500);

CREATE TABLE title(
worker_ref_id numeric,
worker_title varchar(20),
affected_from varchar(20)
);
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (1,'Manager','2016-02-20 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (2, 'Executive', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (8, 'Executive', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (5, 'Manager', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (4, 'Asst. Manager', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (7, 'Executive', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (6, 'Lead', '2016-06-11 00:00:00');
INSERT INTO title (worker_ref_id,worker_title,affected_from) VALUES (3, 'Lead', '2016-06-11 00:00:00');

--1) 
SELECT first_name AS WORKER_NAME FROM worker;
--2) 
SELECT UPPER(first_name) FROM worker;
--3) 
SELECT DISTINCT department FROM worker;
--4)
SELECT substr(first_name,1,3) from worker;
--5) 
SELECT INSTR(first_name, 'a') FROM worker WHERE first_name = 'Amitabh';
--6) 
SELECT RTRIM(first_name) FROM worker;
--7) 
SELECT LTRIM(department) FROM worker;
--8) 
SELECT DISTINCT length(department) FROM worker;
--9) 
SELECT REPLACE(first_name,'a','A') FROM worker;
--10) 
SELECT (first_name||(' '|| last_name)) AS COMPLETE_NAME FROM worker;
--11) 
SELECT * FROM worker order by first_name asc;
--12) 
SELECT * FROM worker ORDER BY first_name ASC, department DESC;

--13) 
      SELECT * FROM worker WHERE FIRST_NAME = 'Vipul' OR FIRST_NAME = 'Satish';
                        (or)
      SELECT * FROM worker WHERE first_name IN ('Vipul', 'Satish');


--14) 
SELECT * FROM worker WHERE FIRST_NAME NOT in ('Vipul','Satish');
--15) 
SELECT * FROM worker WHERE first_name LIKE '%a%';
--16) 
SELECT * FROM worker WHERE department = 'Admin';
--17) 
SELECT * FROM worker WHERE first_name LIKE '%a';
--18) 
SELECT * FROM worker WHERE first_name LIKE '_____h';
--19) 
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;

--20) 
      SELECT * FROM worker WHERE joining_date LIKE '2014-02%';
                                (or)
      SELECT *  FROM worker WHERE joining_date BETWEEN '2014-02-01 00:00:00' and '2014-03-01 00:00:00';

 
--21) 
SELECT COUNT(*) FROM worker WHERE department = 'Admin';
--22) 
SELECT concat(first_name,concat(' ',last_name)),salary FROM worker WHERE salary>=50000 AND salary<=100000;
--23) 
SELECT department, count(worker_id) No_Of_Workers FROM worker GROUP BY DEPARTMENT ORDER BY No_Of_Workers DESC;
--24) 
SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE FROM worker W INNER JOIN title T ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE in ('Manager');
--25) 
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*) FROM title GROUP BY WORKER_TITLE, AFFECTED_FROM HAVING COUNT(*) > 1;
--26) 
SELECT * FROM worker WHERE MOD (worker_id, 2) <> 0;
--27) 
SELECT * FROM worker WHERE MOD (WORKER_ID, 2) = 0;
--28) 
CREATE TABLE worker_clone AS SELECT * FROM worker;

--29) 
      (Select * From worker ) Intersect (Select * From worker_clone);
                    (or)
      SELECT * FROM worker INNER JOIN title ON worker_id=worker_ref_id;


--30) 
      SELECT * FROM worker MINUS SELECT * FROM worker_clone;
        (or)
      SELECT * FROM worker LEFT JOIN bonus ON worker_id=worker_ref_id WHERE worker_ref_id is null;


--31) 
        SELECT SYSDATE FROM DUAL;
                (or)
      SELECT SYSTIMESTAMP FROM DUAL;


--32) 
SELECT * FROM (SELECT * FROM Worker ORDER BY Salary DESC) WHERE ROWNUM <= 10;

--33) 
      SELECT MAX(salary) FROM worker WHERE salary<(
      SELECT MAX(salary) FROM worker WHERE salary<(
      SELECT MAX(salary) FROM worker WHERE salary<(
      SELECT MAX(salary) FROM worker WHERE salary<(
      SELECT MAX(salary) FROM worker))));


--34)   
        SELECT salary FROM worker W1
        WHERE 4 = (
        SELECT COUNT( DISTINCT ( W2.Salary ) )
        FROM worker W2
        WHERE W2.Salary >= W1.Salary
        );

 
--35)
        SELECT DISTINCT W.WORKER_ID, W.FIRST_NAME, W.Salary 
        from Worker W, Worker W1 
        where W.Salary = W1.Salary 
        and W.WORKER_ID != W1.WORKER_ID;


--36)
    SELECT max(Salary) from Worker 
    where Salary not in (Select max(Salary) from Worker);
    SELECT MAX(salary) FROM worker WHERE salary<(SELECT MAX(salary) FROM worker);


--37)
    SELECT FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='Account' 
    union all 
    SELECT FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='Account';

    SELECT FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='Admin' 
    union all 
    SELECT FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='Admin';

    SELECT FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
    union all 
    SELECT FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';


--38) 
SELECT * FROM worker INNER JOIN title ON worker_id=worker_ref_id;
--39) 
SELECT * FROM worker WHERE worker_id <= (SELECT count(worker_id)/2 from worker);
--40) 
SELECT department,COUNT(department) AS No_of_workers FROM worker GROUP BY department HAVING COUNT(worker_id)<5;
--41) 
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS Number_of_Workers FROM worker GROUP BY DEPARTMENT;
--42) 
SELECT * FROM worker where worker_id = (SELECT max(worker_id) FROM worker);
--43)
SELECT * FROM worker where worker_id = (SELECT min(worker_id) FROM worker);
--44) 
SELECT * FROM worker WHERE worker_id>(SELECT COUNT(*) FROM worker)-5;
--45) 
SELECT department, first_name, salary FROM worker a WHERE salary = (SELECT MAX(salary) FROM worker  WHERE department = a.department);

--46)
    SELECT distinct salary FROM worker a WHERE 3 >= (SELECT count(distinct salary) FROM worker b WHERE a.salary <= b.salary) order by a.salary DESC;
                        (or)
    SELECT * FROM(SELECT DISTINCT salary FROM worker ORDER BY salary DESC)WHERE rownum<=3;


--47) 
    SELECT distinct salary FROM worker a WHERE 3 >= (SELECT count(distinct salary) FROM worker b WHERE a.salary >= b.salary) order by a.salary DESC;
                (or)
    SELECT * FROM(SELECT DISTINCT salary FROM worker ORDER BY salary ASC)WHERE rownum<=3;


--48)
    SELECT distinct salary FROM worker a WHERE n >= (SELECT count(distinct salary) FROM worker b WHERE a.salary <= b.salary) order by a.salary DESC;
                    (or)
    SELECT * FROM(SELECT DISTINCT salary FROM worker ORDER BY salary DESC)WHERE rownum<=n;


--49) 
SELECT department, SUM(salary) FROM worker GROUP BY department;
--50) 
SELECT first_name, salary FROM worker WHERE salary=(SELECT MAX(salary) FROM worker);
