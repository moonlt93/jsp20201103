SELECT *FROM employee WHERE salary>=1500;
-- employee ���̺� ��ü�� �����ϰ�, ������ salary�� 1500�̻��� ���
SELECT ename, salary + NVL(commission, 0) FROM employee WHERE salary>=1500;

SELECT*FROM employee WHERE dno=10;
--employee ���̺� ��ü�� �����ϰ�, ������ dno�� 10�λ��

SELECT*FROM employee WHERE ename='SCOTT';
--employee ���̺� ��ü�� �����ϰ�, ������ scott �̸��� ���� ���

SELECT*FROM employee WHERE hiredate <='1981/01/01';
--81�� 01��01�� ���� �Ի��� ���

SELECT*FROM employee WHERE hiredate>='1981/01/01' AND salary >3000;
--employee ���̺� ��ü�� �����ϰ�, ������ 81�� 01��01�� ���� �Ի��� ������3000�Ѵ� ���
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary > 3000;
--employee ���̺� ��ü�� �����ϰ�, ������ 81�� 01��01�� ���� �Ի��ϰų� ������ 3000
SELECT *FROM employee WHERE NOT salary >3000;
--employee ���̺� ��ü�� �����ϰ�, ������ ������ 3000������ ���
SELECT *FROM employee WHERE ename > 'G' AND salary >2000 AND dno <>30;
----employee ���̺� ��ü�� �����ϰ�,������ �̸��� 'G'�� ���� ���� 2000�̻� DNO�� 30�� �ƴ� ���.
SELECT *FROM employee WHERE dno=10 and job='MANAGER';
----employee ���̺� ��ü�� �����ϰ�, ������ dno�� 10�̰� , �Ŵ����� ���.
SELECT*FROM employee WHERE NOT dno=10;
--employee ���̺� ��ü�� �����ϰ�, ������ dno�� 10�� �ƴ� ���.
SELECT*FROM employee WHERE dno <>10;
--employee ���̺� ��ü�� �����ϰ�, ������ dno�� 10�� �ƴ� ���.
SELECT *FROM employee WHERE SALARY>=1000 AND salary<=1500;
--employee ���̺� ��ü�� �����ϰ�, ������ ���� 1000�̻��̰� 1500������ ���.
SELECT *FROM employee WHERE salary<1000 OR salary>1500;

SELECT *FROM employee WHERE commission=300 or commission=500 or commission =1400;
