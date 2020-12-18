--제약사항 constraint
--not null: 컬럼의값이 null은 안됨.
--unique 유일한 값만 저장
--check : 지정된 값만 가능
--foreign key(외래키,참조키), 다른 table에 있는 값만 가능
--primary key(주요키 , 주키, 키)


--not null
create table const01(
        name VARCHAR2(30) NOT NULL,
        age NUMBER );
        
        

INSERT INTO const01
VALUES ('abc',30);
INSERT INTO const01
VALUES('NULL',40); --x n,u,l,l이란 string이 들어간 것
INSERT INTO const01
VALUES('a',null);
INSERT INTO const01(age)
VALUES(50);--x
INSERT INTO const01 (name,age)
VALUES (' ',30);

SELECT * FROM const01;


--207page

create table dept123(
    dno number(2),
    dname varchar2(14),
    loc varchar2(13));

create table dept1234
as
select *
from department;


--UNIQUE
CREATE TABLE const02
(
    email VARCHAR2(30) UNIQUE,
    name VARCHAR2(30)
);

INSERT INTO const02(email,name)
VALUES('a','b');
INSERT INTO const02 (email,name)
VALUES('a','c');
INSERT INTO const02 (email,name)
VALUES('c','b');
INSERT INTO const02(name)
VALUES('c');
SELECT *FROM const02;



create table customer(
id varchar(20) unique,
pwd varchar(20)not null,
name varchar(20) not null,
phone varchar(30),
address varchar(100));

create table customer(
    id varchar(20) constraint customer_id_uk unique,
    pwd varchar(20) constraint customer_pwd_nn no null,
    name varchar(20) constraint customer_name_nn not null,
    phone varchar(30)
    address varchar(100));




-- CHECK 저장가능한 데이터 값의 범위나 조건만 지정, 설정한 값만을 허용.
CREATE TABLE const03
(
name VARCHAR2(30),
age NUMBER CHECK (age > 0)
);
INSERT INTO const03 (name, age)
VALUES ('a', 30);
INSERT INTO const03 (name, age)
VALUES ('b', 0); -- x
INSERT INTO const03 (name)
VALUES ('c');
SELECT * FROM const03;

COMMIT;

--제약사항 여러 개 사용가능
CREATE TABLE const04
(
email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
                   NAME VARCHAR2(30));

INSERT INTO const04 (email,name)
VALUES(null,'a');
INSERT INTO const04 (email,name)
VALUES('a','b');
INSERT INTO const04 (email,name)
VALUES('a@g','c');
INSERT INTO const04 (email,name)
VALUES('a@g','d');