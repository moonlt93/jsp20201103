
SELECT * FROM employee where ename like'F%';
-- %�� ���� Ư�����ڸ� �����ϰ� ���̰� ������ٴ� �� 
--F�� ���� �ϴ� ���ڿ��� ã����
SELECT*FROM employee where ename ='F';

SELECT * FROM employee where ename like '%M%';
-- ���ʿ� ���� m�� ��� �ִ��� �˻��� ����.

select * FROM employee where ename like'%N';
-- 'N'���� ������ ���ڿ� �˻�

SELECT * FROM employee where ename like '_A%';
--�ι�° ���ڰ� a�� ��� �ڿ��� ���� ������ �����

SELECT *FROM employee where ename like'__A%';
-- ����° ���ڰ� A�̰�, A�ڿ��� ������ ������ �����..

SELECT *FROM employee WHERE ename not like '%A%';
--A�� �ȵ� ���ڿ�

SELECT ename, dno, commission FROM employee;
-- ����� Ŀ�̼� ���
SELECT * from employee WHERE commission=null;
-- ������� ������ �ʴ´�. commission�� ���� �ʴ� ��

SELECT *from employee WHERE commission is null;
-- is null ���� commission���� null�� �÷��� �˻�

SELECT *from employee WHERE commission is not null;
--commission�� ���� null�� �ƴ� �ο츸 �˻�.
SELECT
    *
FROM employee ORDER BY SALARY ASC;
--SALARY�� ������������ ����

SELECT * FROM employee ORDER BY salary;
--����Ʈ ��°����� ������ ��� 

SELECT * FROM employee order by salary desc;
-- �������� ����

select *from employee ORDER BY ename;
-- ���ĺ��� �������� ����

SELECT*from employee order by hiredate desc;
--��¥ �����͸� ���� �������� ����

SELECT*FROM employee ORDER BY SALARY DESC, ENAME ASC;
--SALARY�� �������� ENAME�� ��������
