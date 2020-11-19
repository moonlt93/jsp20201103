DESCRIBE employee;
DESC employee;

SELECT eno FROM employee;


SELECT CONCAT(ename,dname) From employee;
SELECT ename ||jov job From employee;
SELECT ename ||"," ||job from employee;
select ename, SUBSTR(ename, 1 , 2) FROM employee;
select ename, SUBSTR(ename, -2 , 2) FROM employee;

SELECT *FROM employee WHERE SUBSTR(ename,-1,1)='N';

SELECT * FROM employee Where substr(hiredate,1,2)='87';

SELECT substr('Oracle mania',4,3),substrb('Oracle mania',4,3) FROM DUAL;

SELECT substr('����Ŭ�ŴϾ�',3,4),substrb('����Ŭ�ŴϾ�',3,4) FROM dual;

SELECT * FROM employee WHERE (TO_CHAR(hiredate, 'YYYY-MM-DD'))='1987';

SELECT ename,INSTR(ename, 'AL') FROM employee;
SELECT INSTR(ename, 'TIGER TEA TIRE TON ','T',2,2)FROM DUAL;

SELECT INSTR('Oracle mania','a') from dual;
-- ���� ���� ã��

select INSTR('Oracle mania','a',5,2) from dual;
--oracle mania 'a'�� 5��°���� 2��°�� �߰ߵǴ� ��ġ 

select INSTR('����Ŭ�ŴϾ�', '��'),
        INSTRB('����Ŭ�ŴϾ�','��') 
        FROM DUAL;
--        BYTE �� ������ INSTRB�� '��'����4�� �ѱ� 3BYTE

SELECT ename, LPAD(ename,10,'#') FROM employee;
-- �����ڸ��� Ư����ȣ�� ä���
SELECT ename, RPAD(ename,10,'*') FROM employee;
--������ �ڸ��� Ư����ȣ�� ä��� 

SELECT TRIM(' ABC ') FROM dual;
--����� ����
SELECT RTRIM('  ABC  ') FROM dual;
--���� ���� ����
SELECT LTRIM('  ABC  ') FROM dual;
--������ ���� ����

SELECT 98.7654,
    ROUND(98.7654),
    ROUND(98.7654,2),
    ROUND(98.7654,-1)
    FROM DUAL;
--Ư�� �ڸ������� �ݿø�. 1 2 �Ҽ��� 2��°�ڸ� 3 �Ҽ��� 1��° �ڸ� 

SELECT 98.7654,
    TRUNC(98.7654),
    TRUNC(98.7654,2),
    TRUNC(98.7654,-1)
    FROM DUAL;
       
