--데이터(record,row) 추가
--INSERT INTO tname(col1,col2) VALUES (val1,val2);
--책(227쪽)

CREATE TABLE dept_copy
AS
SELECT *FROM department WHERE 0=1;

DESC dept_copy;
INSERT INTO dept_copy--(DNO,DNAME,LOC) 생략해도 상관없.
VALUES (10,'ACCOUNTING','NEW YORK');




INSERT INTO depT_copy(DNAME,dNO,loc)
VALUES('DALLAS',20,'RESEARCH');



SELECT *FROM DEPT_COPY;

INSERT INTO DEPT_COPY
(DNO,DANME)
VALUES(30,'SALES');

DESC dept_copy;
INSERT INTO dept_copy(dno,dname,loc)
VALUES(30,'SALES');
SELECT *FROM dept_copy;


INSERT INTO dept_copy(dno,dname,loc)
VALUES(40,'OPERATION',NULL);


--228쪽
INSERT INTO DEPT_COPY
(DNO,DNAME)
VALUES(30,'SALES');

insert into dept_copy
values(40,'OPERATIONS','NULL');

insert into dept_copy
values(50,'COMPUTING','');



INSERT into EMP_COPY
VALUES(7000,'CANDY','MANAGER','2012/05/01',10);

INSERT INTO EMP_COPY
VALUES(7010,'TOM','MANAGER',
        TO_DATE('2012,05,01','YYYY,MM,DD'),20);
        

insert into emp_copy
values(7020,'JERRY','SALESMAN','SYSDATE',30);


