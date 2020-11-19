select *from employee;

SELECT * FROM employee WHERE ename='WARD';

SELECT *FROM employee WHERE ename LIKE 'W%'; 

SELECT *FROM employee WHERE ename LIKE '%D';

SELECT *FROM employee WHERE ename LIKE '%D%';

SELECT *FROM employee WHERE ename LIKE '_A__';

SELECT *FROM employee WHERE ename LIKE '_A%';

--54P

SELECT *FROM employee WHERE ename like 'F%';

SELECT *FROM employee WHERE ename ='F';

SELECT *FROM employee WHERE ename ='%M%';

SELECT *FROM employee WHERE ename like '%N';

SELECT *FROM employee WHERE ename like'_A%';

SELECT *FROM employee WHERE ename like'__A%';

SELECT *FROM employee WHERE ename not like '%A%';

SELECT ename,dno,commission FROM employee;


SELECT *FROM employee;
SELECT *FROM employee WHERE commission =NULL;
SELECT *FROM employee WHERE commission IS NULL;
SELECT *FROM employee WHERE commission IS NOT NULL;

SELECT *FROM employee ORDER BY ename; 

SELECT *FROM employee WHERE salary >1500 ORDER BY eno;

SELECT *FROM employee ORDER BY eno DESC;

SELECT dno,ename FROM employee ORDER BY dno DESC, ename ASC;
