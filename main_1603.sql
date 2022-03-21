-- create a table
CREATE TABLE bankaccounts(
    customer_id INTEGER,
    name varchar(10),
    account_type varchar(10)
    
);
INSERT INTO bankaccounts VALUES(1,'ramesh','S');
INSERT INTO bankaccounts VALUES(2,'suresh','C');
INSERT INTO bankaccounts VALUES(3,'kamesh','S');
INSERT INTO bankaccounts VALUES(4,'satish','C');
SELECT * FROM bankaccounts where customer_id=3;
update bankaccounts set account_type='S' WHERE customer_id=4;
delete from bankaccounts WHERE customer_id=4;
SELECT * from bankaccounts WHERE account_type='S';