DECLARE 
   c_id trainee.rollno%type :=5; 
   c_fname  trainee.fname%type; 
   c_lname varchar(20); 
   c_emailid  varchar(20); 
BEGIN 
   SELECT rollno, fname, lname ,emailid INTO c_id ,c_fname,c_lname,c_emailid 
   FROM trainee 
   WHERE rollno = c_id;  
   dbms_output.put_line('Trainee ' ||c_fname||' '||c_lname); 
END; 

DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE trainee 
   SET emailid = 'changed@email.com'; 
   IF sql%notfound THEN 
      dbms_output.put_line('no trainees selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' trainees selected '); 
   END IF;  
END; 

DECLARE 
   c_id trainee.rollno%type; 
   c_name trainee.fname%type; 
   c_emailid varchar(30); 
   CURSOR c_trainee is 
      SELECT rollno, fname, emailid FROM trainee; 
BEGIN 
   OPEN c_trainee; 
   LOOP 
   FETCH c_trainee into c_id, c_name, c_emailid; 
      EXIT WHEN c_trainee%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_emailid); 
   END LOOP; 
   CLOSE c_trainee; 
END; 

DECLARE 
   c_id trainee.rollno%type := 4; 
   c_name trainee.fname%type; 
   c_emailid trainee.emailid%type; 
BEGIN 
   SELECT  fname, emailid INTO  c_name, c_emailid 
   FROM trainee 
   WHERE rollno = c_id;  
   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name); 
   DBMS_OUTPUT.PUT_LINE ('Email Address: ' || c_emailid); 

 

EXCEPTION 
   WHEN no_data_found THEN 
      dbms_output.put_line('No such trainee!'); 
   WHEN others THEN 
      dbms_output.put_line('Error!'); 
END; 

DECLARE 
   train trainee%rowtype; 
BEGIN 
   SELECT * into train 
   FROM trainee 
   WHERE rollno = 3;  
   dbms_output.put_line('Rollno: ' || train.rollno); 
   dbms_output.put_line('Trainee Name: ' || train.fname); 
   dbms_output.put_line('Trainee Name: ' || train.lname); 
   dbms_output.put_line('Trainee Emailid: ' || train.emailid); 
END; 

DECLARE 
   CURSOR train is 
      SELECT rollno, fname, lname,emailid  
      FROM trainee; 
   trainrec train%rowtype; 
BEGIN 
   OPEN train; 
   LOOP 
      FETCH train into trainrec; 
      EXIT WHEN train%notfound; 
      DBMS_OUTPUT.put_line(trainrec.rollno || ' ' || trainrec.fname); 
   END LOOP; 
END; 