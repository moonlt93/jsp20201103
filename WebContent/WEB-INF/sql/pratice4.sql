select mod(31,2),
       MOD(31,5),
       MOD(31,8)
       from dual;
--  ù��° ���� �ι�° ������ ���� �������� ��ȯ.

select ename,salary,MOD(salary,500) from employee;
--������ ���ϱ�

select sysdate from dual;
--
���� ���� ǥ��

SELECT SYSDATE-1 ����,SYSDATE ����, SYSDATE+1 ���� FROM DUAL;

SELECT ROUND(SYSDATE-HIREDATE) �ٹ��ϼ� FROM EMPLOYEE;

SELECT CEIL(345.1456) FROM DUAL;

SELECT ABS(-15) FROM DUAL;
--����
SELECT POWER(3,3) FROM DUAL;
--3�� ������
SELECT SQRT(4) FROM DUAL;
--���ϱ� 0.5

SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;
-- �� ǥ������ ��, �����ϸ�, NULL ����X ù ǥ���� ��ȯ 

SELECT ename, salary, commission, coalesce(commission,salary,0)
from employee order by job;

SELECT ename,dno, DECODE(dno,10,'ACCOUNTING', 20,'RESEARCH',30,'SALES', 40,'OPRATIONS','DEFAULT')AS DNAME
FROM employee order by dno;
--SWITCH CASE���� ��� 

SELECT ENAME, DNO,
CASE WHEN DNO=10 THEN'ACCOUNTING'
     WHEN DNO=20 THEN'RESEARCH'
     WHEN DNO=30 THEN 'SALES'
     WHEN DNO=40 THEN 'OPERATIONS'
     ELSE 'DEFAULT'
     END AS DNAME
     FROM EMPLOYEE
     ORDER BY DNO;
     
SELECT SUBSTR(HIREDATE,1,2)�⵵,
       SUBSTR(HIREDATE,4,2)��
       FROM employee;
       
SELECT * FROM employee WHERE SUBSTR(HIREDATE,4,2)='04';
       
       
SELECT *FROM employee WHERE MOD(ENO,2)=0; 
-- ����� ����� ¦���� ����� ���

SELECT HIREDATE, TO_CHAR(HIREDATE,'YY/MON/DDDY')FROM employee;
-- ����� ���̺��� �Ի��� ��� 

SELECT TRUNC(SYSDATE-TO_DATE('2020/01/01','YYYY-MM-DD'))FROM DUAL;
