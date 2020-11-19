SELECT *FROM employee;
SELECT *FROM employee WHERE ename='SMITH';
SELECT *FROM employee WHERE salary > 1000;
SELECT *FROM employee WHERE commission <500;
SELECT *FROM employee WHERE salary >= 3000;
SELECT *FROM employee WHERE salary <=2000;
SELECT *FROM employee WHERE ename <= 'D';
-- 이름이 A~C인 사람들 숫자에 따옴표 굳이? 쓰지말자 

SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate ='1981/02/20';
--SELECT * FROM employee WHERE hiredate ='81/02/20';

SELECT *FROM employee
WHERE salary>=3000 AND salary <=5000;

SELECT *FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT *FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT *FROM employee
WHERE salary <3000 OR salary >5000;

SELECT * FROM employee 
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee 
WHERE dno =10 OR dno=20;

SELECT 
*
FROM employee
WHERE dno IN(10,20);

SELECT
    *
FROM employee
WHERE dno NOT IN (20);


SELECT
    *
FROM employee
WHERE salary between 1000 and 1500;

SELECT
    *
FROM employee
WHERE salary not between 1000 and 1500;

SELECT
    *
FROM employee
WHERE salary<1000 or salary>1500;

SELECT*FROM employee
WHERE hiredate between '1982/01/01' and '1982/12/31';

SELECT *FROM employee
WHERE commission in(300,500,1400);

SELECT
    *
FROM employee
WHERE COMMISSION=300 OR COMMISSION=500 OR COMMISSION=1400;

SELECT
    *
FROM employee
WHERE commission<>300 and commission <>500 and commission<>1400;

SELECT
    *
FROM employee
WHERE commission not in(300, 500 ,1400);

