--table 만들기
--CREATE TABLE



CREATE TABLE table1 (
 col1 NUMBER(3, 1), -- 수 3의 길이고 소수밑 1
 col2 VARCHAR2(6),  -- 가변길이 문자열 6bytes까지
 col3 CHAR(4),      -- 고정길이 문자열 4bytes
 col4 DATE          -- 날짜시간
);
SELECT * FROM table1;
DESC table1;
SELECT * FROM department;

-- DATA TYPE
-- 수, 문자열, 날짜시간
-- 수
--NUMBER
--NUMBER(값)
--ex) 값이 3이면 1000이상 표시X
--NUMBER(값1, 값2)
--ex) 값1은 총길이, 값2는 소수점밑의 길이
--NUMBER(3, 2) :10이상 표시 못함.

-- 문자열
-- VARCHAR2(값) : 가변 길이 
-- 값:byte수
-- CHAR(값): 고정 길이
-- 값: byte수


--날짜시간
--DATE

create table table1(
                dno number(2),
                dname varchar2(14),
                loc varchar2(13));
                
SELECT * FROM table1;
DESC table1;
SELECT * FROM department;

                

create table dept_second
as
select *
from department;


--책 예제(208)
create table dept20
as
select eno,ename,salary*12annsal
from employee
where dno=20;
DESC dept20;
DESC employee;

--책 예제 209
create table dept_forth
as 
select dno,dname
from department
where 0=1;
SELECT *FROM department;
SELECT *FROM dept_forth;
-- 모두 거짓 false 아무 행도 선택x



select *from table;
desc table1;
select*from department;



--테이블 구조를 변경하는 ALTER TABLE 문

alter table dept20
add(birth date);

INSERT INTO dept20(BIRTH) 
VALUES("931023");

select*
from dept20;

alter table dept20
modify ename varchar2(30);


--책 예제 (207쪽)
CREATE TABLE dept( 
    dno NUMBER(2),
    dname VARCHAR(14),
    loc VARCHAR2(13));
    
 SELECT * FROM dept;
 DESC dept;
 
 -- 이미 있는 테이블 복사
 --1. 같은 구조의 table
 --2. 옛 table을 select-> 새로운 table insert
 
 CREATE TABLE new_table
 as
 SELECT *FROM old_table ;





-- alter table 칼럼 추가


alter table dept20
add(birth date);

alter table dept20
modify ename varchar2(30);

alter table dept20
drop column ename;

alter table dept20
set unused(eno);

alter table dept20
drop unused columns;

--rename 문

rename dept20 to emp20;

--테이블 구조를 제거하는 drop table문

drop table emp20;


