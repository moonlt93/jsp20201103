SELECT commission,nvl(commission,0) from employee;

SELECT sum(salary) FROM employee;

SELECT AVG(salary) FROM employee;

SELECT MIN(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT *FROM employee;

SELECT COUNT(*) FROM employee;

select sum(salary) as"�޿��Ѿ�",
        avg(salary) as"�޿����",
        max(salary) as"�ִ�޿�",
        min(salary) as"�ּұ޿�"
        
        FROM employee;
    
        
        
select max(hiredate),
        min(hiredate)
        from employee;
        
SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;       
SELECT MAX(commission) FROM employee;
SELECT min(commission) FROM employee;       
SELECT avg(commission) FROM employee;

select count(*)as "����� ��"
from employee;

select count(commission)as "Ŀ�̼� �޴� ��� ��"
from employee;

select count(distinct job) as"���������� ����"
from employee;
-- �ߺ� ����

SELECT COUNT(distinct (job)) FROM employee;

