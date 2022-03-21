CREATE TABLE emp(
    empno numeric,
    name varchar(10),
    desg varchar(10),
    salary numeric check (salary>0),
    deptid numeric,
    loc varchar(10),
    
    constraint pk_emp primary key (empno),
    constraint fk_deptid foreign key (deptid) references dept (deptno)
);

create table dept(
    deptno numeric,
    deptname varchar(10),
    
    constraint pk_dept primary key (deptno)
);

insert into emp(empno,name,salary,desg,deptid,loc)
values(101,'prasad',1000,'dev',4,'Bangalore');

insert into emp(empno,name,salary,desg,deptid,loc)
values(102,'krishna',2000,'analyst',1,'Bangalore');

insert into emp(empno,name,salary,desg,deptid,loc)
values(103,'rakesh',3000,'dev',2,'Chennai');

insert into emp(empno,name,salary,desg,deptid,loc)
values(104,'suresh',4000,'dev',3,'Hyderabad');

insert into emp(empno,name,salary,desg,deptid,loc)
values(105,'ramesh',5000,'manager',3,'Hyderabad');

insert into emp(empno,name,salary,desg,deptid,loc)
values(106,'harshitha',6000,'dev',1,'Chennai');

insert into emp(empno,name,salary,desg,deptid,loc)
values(107,'darshan',7000,'dev',1,'Bangalore');

insert into emp(empno,name,salary,desg,deptid,loc)
values(108,'rajath',8000,'dev',2,'Chennai');

insert into emp(empno,name,salary,desg,deptid,loc)
values(109,'chethan',9000,'analyst',2,'Mumbai');

insert into emp(empno,name,salary,desg,deptid,loc)
values(110,'krishna',10000,'manager',4,'Delhi');

insert into dept(deptno,deptname)
values(1,'FINANCE');

insert into dept(deptno,deptname)
values(2,'REPORTS');

insert into dept(deptno,deptname)
values(3,'FACILTIES');

insert into dept(deptno,deptname)
values(4,'HR');


--select * from emp where salary>1000;
--select max(salary) from emp;
--select max(salary) from emp where salary<(select max(salary) from emp);
--select name from emp where name like '%d';
--SELECT e.deptid, e.name, d.deptno ,d.deptname FROM emp e , dept d   WHERE e.deptid = d.deptno  AND  d.deptname = 'FINANCE';
/*SELECT e.deptid, e.name, d.deptno ,d.deptname
FROM emp e , dept d  
WHERE e.deptid = d.deptno 
AND d.deptname='HR';*/
--SELECT * FROM emp WHERE salary BETWEEN '2000' AND '5000';
--SELECT * FROM emp WHERE salary >'2000' AND salary < '9000';
--SELECT * FROM emp WHERE salary >'2000';
--SELECT * FROM emp WHERE salary <'5000';
--SELECT COUNT(name) from emp;
--SELECT sum(salary) FROM emp;
--SELECT deptid, SUM(salary) FROM  emp GROUP BY  deptid;
--DELETE * FROM emp WHERE salary<'5000';
