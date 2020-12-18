--제약 사항 추가
DROP TABLE emp_copy;

CREATE TABLE emp_copy
AS
SELECT *FROM employee;

SELECT *FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name='EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name='EMP_COPY';



ALTER TABLE emp_copy
ADD PRIMARY KEY (eno);

DROP TABLE dept_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department;

ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno);


select *from user_constraints
WHERE table_name='DEPT_COPY';

ALTER TABLE EMP_COPY
ADD CONSTRAINT EMP_COPY_DNO_FK
FOREIGN KEY(DNO) REFERENCES DEPT_COPY(dno);

--책(260쪽)
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn NOT NULL;


--제약사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

select * from user_constraints
WHERE TABLE_NAME='EMP_COPY';


ALTER TABLE emp_copy
DROP CONSTRAINT SYS_C007769;


select * from user_constraints
WHERE TABLE_NAME='DEPT_COPY';

--DEPT_COPY PRIMARY 제약사항 삭제

ALTER TABLE DEPT_COPY
DROP CONSTRAINT SYS_C007770;

SELECT *FROM dept_copy;


ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_dno_fk;
--외래키 삭제


ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;
--CASCADE 사용시 연관되어 있는 데이터 갱신, 삭제 가능.

select * from user_constraints
WHERE TABLE_NAME='DEPT_COPY';

