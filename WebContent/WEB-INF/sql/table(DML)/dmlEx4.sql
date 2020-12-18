--UPDATE
--데이터를 변경하는 명령문
--UPDATE Tname SET col1=val1, col2=val2, , , WHERE
DROP TABLE dept_copy;
CREATE TABLE dept_copy
AS
SELECT * FROM department;
SELECT * FROM dept_copy;
-- 책 (232쪽)
UPDATE dept_copy
SET dname='HR';
-- 책 (233쪽)
UPDATE dept_copy
SET dname='PROGRAMMING', loc='SEOUL'
WHERE dno=10;
SELECT * FROM dept_copy; 
SELECT * FROM dept_copy;

COMMIT;

UPDATE dept_copy
SET loc=(
        SELECT loc
        FROM dept_copy
        WHERE dno=20
)
WHERE dno=10;
SELECT * FROM dept_copy;

-- 책 234쪽
UPDATE dept_copy
SET dname=(SELECT dname 
            FROM dept_copy
            WHERE dno=30
),
loc=(SELECT loc
     FROM dept_copy
     WHERE dno=30)
WHERE dno=10;
SELECT * FROM dept_copy;

COMMIT; 

drop table emp_INSERT;


create table emp_INSERT
AS
select* from employee where 1=0;

INSERT INTO emp_INSERT
VALUES(1,'YOUjeong','DEVELOPER',NULL,SYSDATE+10,6000,230,30);

SELECT * FROM emp_Insert;


INSERT INTO emp_insert
values(2,'LEEJH','SOLDIER',NULL,sysdate-1,1150,NULL,20);


--DELETE
--DELETE tname WHERE 

SELECT *FROM dept_copy;

DELETE FROM dept_copy
WHERE dno=10;


DELETE dept_copy;

COMMIT;

--책 236쪽

drop table emp_copy;

create TABLE emp_copy
as
select * from employee;
SELECT
    *
FROM emp_copy;

delete emp_copy
WHERE dno=(select dno
        FROM  department
        where dname='SALES');

-- 문자열은 대소문자 구분 잘 할것


CREATE TABLE DEPT_COPPP
AS
select * from department;

DELETE FROM DEPT_COPPP
WHERE DNAME='RESEARCH';

SELECT *FROM DEPT_COPPP;

DELETE FROM DEPT_COPPP
WHERE DNO IN(10,40);