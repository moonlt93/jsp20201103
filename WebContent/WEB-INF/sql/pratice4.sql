select mod(31,2),
       MOD(31,5),
       MOD(31,8)
       from dual;
--  첫번째 값을 두번째 값으로 나눈 나머지를 반환.

select ename,salary,MOD(salary,500) from employee;
--나머지 구하기

select sysdate from dual;
--
현재 날씨 표시

SELECT SYSDATE-1 어제,SYSDATE 오늘, SYSDATE+1 내일 FROM DUAL;

SELECT ROUND(SYSDATE-HIREDATE) 근무일수 FROM EMPLOYEE;

SELECT CEIL(345.1456) FROM DUAL;

SELECT ABS(-15) FROM DUAL;
--절댓값
SELECT POWER(3,3) FROM DUAL;
--3의 세제곱
SELECT SQRT(4) FROM DUAL;
--곱하기 0.5

SELECT NULLIF('A','A'), NULLIF('A','B') FROM DUAL;
-- 두 표현식을 비교, 동일하면, NULL 동일X 첫 표식을 반환 

SELECT ename, salary, commission, coalesce(commission,salary,0)
from employee order by job;

SELECT ename,dno, DECODE(dno,10,'ACCOUNTING', 20,'RESEARCH',30,'SALES', 40,'OPRATIONS','DEFAULT')AS DNAME
FROM employee order by dno;
--SWITCH CASE문과 비슷 

SELECT ENAME, DNO,
CASE WHEN DNO=10 THEN'ACCOUNTING'
     WHEN DNO=20 THEN'RESEARCH'
     WHEN DNO=30 THEN 'SALES'
     WHEN DNO=40 THEN 'OPERATIONS'
     ELSE 'DEFAULT'
     END AS DNAME
     FROM EMPLOYEE
     ORDER BY DNO;
     
SELECT SUBSTR(HIREDATE,1,2)년도,
       SUBSTR(HIREDATE,4,2)달
       FROM employee;
       
SELECT * FROM employee WHERE SUBSTR(HIREDATE,4,2)='04';
       
       
SELECT *FROM employee WHERE MOD(ENO,2)=0; 
-- 고용인 사번이 짝수인 사람만 출력

SELECT HIREDATE, TO_CHAR(HIREDATE,'YY/MON/DDDY')FROM employee;
-- 고용인 테이블에서 입사일 출력 

SELECT TRUNC(SYSDATE-TO_DATE('2020/01/01','YYYY-MM-DD'))FROM DUAL;
