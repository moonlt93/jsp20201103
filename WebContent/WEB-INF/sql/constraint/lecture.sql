--NOT NULL
--CHECK 
--UNIQUE
--FOREIGN
--PRIMARY KEY
DROP TABLE CUSTOMER;
SELECT * FROM CUSTOMER;
CREATE TABLE customer(
    id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
    pwd VARCHAR2(20)CONSTRAINT customer_pwd_nn NOT NULL,
    name VARCHAR2(20)CONSTRAINT customer_pwd_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100));
    
    SELECT *FROM user_constraintS
    WHERE constraint_name LIKE 'CUSTOMER%';
    
    
DROP TABLE customer;

CREATE TABLE customer(
id VARCHAR2(20) ,
    pwd VARCHAR2(20) CONSTRAINT customer_pwd NOT NULL,
    name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
    phone VARCHAR2(30),
    address VARCHAR2(100),
    CONSTRAINT customer_id_pk PRIMARY KEY (id)
    );
    SELECT *FROM user_constraints
    WHERE constraint_name LIKE 'CUSTOMER%';
    
    -- 책(255쪽)
    -- 책(256쪽)
    
CREATE TABLE EMP_SECOND(
    ENO number(4) constraint emp_seconde_eno_pk primary key,
    ename varchar2(10),
    salary number(7,2) constraint emp_second_salary_min check(salary>0));
   
SELECT * FROM USER_CONSTRAINTS
WHERE constraint_name LIKE 'EMP_SECOND%';
 
create table emp_second(
    eno number(4) constraint emp_seconde_eno_pk primary key,
    ename varchar2(10), salary number(7,2) default 1000);



