CREATE TABLE traine(
   rollno numeric,
   fname varchar(20),
   lname varchar(20),
   emailid varchar(20)
);
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (1,'prakash','verma','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (2,'pranjal','verma','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (3,'priyanka','tripati','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (4,'preethi','krishna','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (5,'pragnya','jaiswal','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (6,'suresh','verma','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (7,'subhash','verma','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (8,'sanvith','tripati','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (9,'sanjay','krishna','some@gmail.com');
INSERT INTO traine (rollno,fname,lname,emailid) VALUES (10,'shilpa','jaiswal','some@gmail.com');

DECLARE
C_ID TRAINE.rollno%TYPE;
C_FNAME TRAINE.fname%TYPE;
C_LNAME VARCHAR(20);
C_EMAILID VARCHAR(20);
CURSOR C_TRAINE IS
SELECT rollno,fname,lname,emailid from traine;
BEGIN
OPEN C_TRAINE;
LOOP
FETCH C_TRAINE INTO C_ID,C_FNAME,C_LNAME,C_EMAILID;
EXIT WHEN C_TRAINE%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(C_ID ||' '|| C_FNAME || ' ' || C_LNAME || ' ' || C_EMAILID); 
END LOOP;
CLOSE C_TRAINE;
END;

DECLARE
CURSOR TRAIN IS
SELECT ROLLNO,FNAME,LNAME,EMAILID FROM TRAINE;
TRAINREC TRAIN%ROWTYPE;
BEGIN
OPEN TRAIN;
LOOP
FETCH TRAIN INTO TRAINREC;
EXIT WHEN TRAIN%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(TRAINREC.ROLLNO || ' ' || TRAINREC.FNAME ||' ' ||TRAINREC.LNAME|| ' ' ||TRAINREC.EMAILID);
END LOOP;
END;

DECLARE
C_ID TRAINE.rollno%TYPE;
C_FNAME TRAINE.fname%TYPE;
C_LNAME VARCHAR(20);
C_EMAILID VARCHAR(20);
CURSOR C_TRAINE IS
SELECT rollno,fname,lname,emailid from traine;
BEGIN
OPEN C_TRAINE;
LOOP
FETCH C_TRAINE INTO C_ID,C_FNAME,C_LNAME,C_EMAILID;
EXIT WHEN C_TRAINE%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(C_ID ||' '|| C_FNAME || ' ' || C_LNAME || ' ' || C_EMAILID); 
END LOOP;
CLOSE C_TRAINE;
END;
