--1�� 

SELECT ename,salary,salary+300 FROM employee ;
--�̸� ���� ����+300�� ������̺��� �����Ͷ�

--2��
SELECT ename, salary,salary*12+100 FROM employee ORDER BY salary*12+100 desc;

--3��
SELECT ename, salary FROM employee WHERE salary>2000 ORDER BY salary DESC;

--4��
SELECT ename,dno FROM employee WHERE eno=7788;
--��� ��ȣ�� 7788�� ���ã�� 
--�̸��� �μ���ȣ�� ������̺��� ��� ������ ����� 7788
SELECT ename,dno FROM employee where eno='7788';

--5��
SELECT ename,salary FROM employee WHERE salary>2000 and salary<3000;
SELECT ename,salary FROM employee  WHERE salary not between 2000 and 3000;

--6��
SELECT ename,job,hiredate FROM employee WHERE hiredate between '81/02/20' AND '81/05/01';

--��� ���̺��� �̸� ���� �Ի��ȣ�� ���� ������, ������� '81/02/20' AND '81/05/01'������ ���;

--7��
SELECT ename,dno FROM employee where dno in(20,30) ORDER BY ename;
--�����ȣ�� 20,30�� ��� �߿��� �������� ����.

--8��
SELECT ename,salary FROM employee  WHERE salary not between 2000 and 3000;

SELECT ename,job ,salary FROM employee WHERE job IN('clerk','SALESMAN') AND SALARY NOT in(1600,950,1300);

--9�� 
SELECT ename,hiredate FROM employee WHERE hiredate like '81%';


--10��
SELECT ename,job FROM employee WHERE MANAGER IS NULL;

--11��
SELECT ename,SALARY,COMMISSION FROM employee ORDER BY SALARY,COMMISSION DESC;

--12��
SELECT ename FROM employee WHERE ename like '__R%';

--13��
SELECT ename FROM employee WHERE ename like '%A%' and ename like'%E%';


--14��
SELECT ename, salary,commission FROM employee WHERE commission >=500;
--15��