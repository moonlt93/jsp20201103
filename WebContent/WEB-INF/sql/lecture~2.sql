SELECT *FROM employee;
SELECT *FROM bonus;
SELECT *FROM department;
SELECT *FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary,salary*12 FROM employee;
SELECT ename, salary/100 FROM employee;
SELECT ename, salary+100 FROM employee;
SELECT ename, salary-100 FROM employee;
SELECT ename, salary*12 AS 연봉 FROM employee;
SELECT ename, salary*12 연봉 FROM employee;

--한줄 주석

/* SELECT [DISTINCT]
여러줄 주석
*/
SELECT * FROM employee;
SELECT ename, salary, commission +commission FROM employee;
SELECT ename, salary, commission, NVL(commission,0)FROM employee;
--null value  null이면 두번째 파라미터의 값을 넣는다. 
SELECT ename, salary +NVL(commission,0)FROM employee;
SELECT ename, salary +NVL(commission,0)합 FROM employee;