--TABLE 이름 변경
--RENAME

RENAME dept20 TO emp20;
DESC dept20;
DESC emp20;
SELECT *FROM emp20;


--테이블의 데이터만 삭제
--TRUNCATE TABLE
--책(216)

SELECT *FROM dept_second;
TRUNCATE TABLE dept_second;




--혼자 해보기
-- 1번

create table dept1(
        dno number(2),
        dname varchar2(14),
        loc varchar2(13));
desc dept1;

--2번
drop table emp;
    create table emp(
            eno number(4),
            ename varchar2(10),
            dno number(2));

--3번
alter table emp 
modify ename varchar2(25);
--4번
create table employee2(emp_id,name,sal,dept_id)
as
select eno,ename,salary,dno from employee;
--5번
drop table emp;
--6번

rename employee2 to emp;

--7번

alter table dept
drop column dname;


--8번 
alter table dept
set unused(loc);




