
CREATE TABLE CUSTOMER(
ID VARCHAR(20) CONSTRAINT CUSTOMER_ID_UK UNIQUE,
pwd varchar(20) CONSTRAINT customer_pwd_nn not null,
name varchar(20) CONSTRAINT customer_name_nn not null,
phone varchar(30),
address varchar(100));

select table_name,constraint_name
from user_constraints
where table_name in('CUSTOMER');

DROP TABLE CUSTOMER;

CREATE TABLE CUSTOMER(
    id varchar(20),
    pwd varchar(20) constraint customer_pwd_nn not null,
    name varchar(20) constraint customer_name_nn not null,
    phone varchar(30),
    address varchar(100),
    constraint customer_id_pk primary key(id);
    
create table emp_second(
    ENO number(4) constraint emp_second e_eno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    dno number(2) constraint emp_seconde_dno_fk  references department);

    
create table emp_second(
eno number(4) constraint emp_seconde_eno_pk primary key,
ename varchar2(10), salary_min check(salary>0));

create table emp_second{
eno 