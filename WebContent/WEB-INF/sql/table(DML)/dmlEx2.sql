--
CREATE TABLE data_Type_ex1
(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3,2)
);
INSERT INTO data_type_ex1(num1)
VALUES(0);
INSERT INTO data_type_ex1(num1)
VALUES(0.01);
INSERT INTO data_type_ex1(num1)
VALUES(999999999);
INSERT INTO data_type_ex1(num2)
VALUES(0);
INSERT INTO data_type_ex1(num2)
VALUES(0.1);
INSERT INTO data_type_ex1(num2)
VALUES(99);
INSERT INTO data_type_ex1(num2)
VALUES(100);
INSERT INTO data_type_ex1(num3)
VALUES(100);
INSERT INTO data_type_ex1(num3)
VALUES(0.01);
INSERT INTO data_type_ex1(num3)
VALUES(9.015);
SELECT *FROM data_type_ex1;

--문자열 
CREATE TABLE data_type_ex2
(
char1 CHAR(3),
vchar2 VARCHAR2(6)
);
INSERT INTO data_type_ex2
(char1)VALUES('');
INSERT INTO data_type_ex2
(char1)VALUES('a');
INSERT INTO data_type_ex2
(char1)VALUES('ab');
INSERT INTO data_type_ex2
(char1)VALUES('abc');

INSERT INTO data_type_ex2
(vchar2)VALUES('abc');

INSERT INTO data_type_ex2
(vchar2)VALUES('한');

INSERT INTO data_type_ex2
(vchar2)VALUES('한글');
INSERT INTO data_type_ex2
(vchar2)VALUES('한');

commit;


CREATE TABLE data_type_ex3
(
date1 DATE
);
SELECT sysdate FROM DUAL;
INSERT INTO data_type_ex3
VALUES (sysdate);
INSERT INTO data_type_ex3
VALUES ('2020/11/01');
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10', 'YYYY-MM-DD'));
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-09-09 17:33:22', 'YYYY-MM-DD HH24:MI:SS'));
SELECT * FROM data_type_ex3;
SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS')
FROM data_type_ex3;
COMMIT;


FROM DATA_TYPE_ex3;



--책(229쪽)
CREATE TABLE emp_copy
AS
SELECT eno,ename,job,hiredate,Dno
FROM employee
WHERE 0=1;

INSERT INTO emp_copy
VALUES(7000,'CANDY','MANAGER',TO_DATE('2012/05/01','YYYY/MM/DD'))

SELECT *FROM emp_copy;

--책(230쪽)
INSERT INTO emp_copy
VALUES (7010,'TOM','MANAGER', TO_DATE('2012,05,01','YYYY,MM,DD'),20);

INSERT INTO emp_copy
VALUES(7020,'JERRY','SALEMAN',SYSDATE,30);
SELECT *FROM emp_copy;



--혼자해보기

CREATE TABLE emp_INSERT
AS
SELECT *
FROM employee
WHERE 0=1;
--테이블 생성


INSERT INTO emp_INSERT
VALUES(2,'YOU','STUDENT', null,sysdate,2700,230,10);

select * from emp_INSERT;
--행 삽입

INSERT INTO emp_insert
values(2,'LEEJH','SOLDIER',NULL,
        TO_DATE(sysdate,'YY/MM/DD'),1150,null,20);


insert into dept_copy
select *from department;

INSERT INTO dep_copy
SELECT *FROM department;
commit;

