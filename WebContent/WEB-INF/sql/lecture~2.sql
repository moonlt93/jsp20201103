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
SELECT ename, salary*12 AS ���� FROM employee;
SELECT ename, salary*12 ���� FROM employee;

--���� �ּ�

/* SELECT [DISTINCT]
������ �ּ�
*/
SELECT * FROM employee;
SELECT ename, salary, commission +commission FROM employee;
SELECT ename, salary, commission, NVL(commission,0)FROM employee;
--null value  null�̸� �ι�° �Ķ������ ���� �ִ´�. 
SELECT ename, salary +NVL(commission,0)FROM employee;
SELECT ename, salary +NVL(commission,0)�� FROM employee;