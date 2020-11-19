SELECT sysdate FROM DUAL;

SELECT sysdate +1 FROM DUAL;
SELECT sysdate -1 FROM DUAL;

SELECT ename,hiredate, sysdate- hiredate FROM employee;
--총 일한 시간.
SELECT ename,hiredate, ROUND(sysdate- hiredate) FROM employee;
--1의 자리에서 반올림

SELECT ROUND(SYSDATE-HIREDATE) 근무일수 FROM employee;

SELECT hiredate TRUNC(HIREDATE,'MONTH') FROM employee;

SELECT ROUND(SYSDATE) FROM dual;
SELECT ROUND(SYSDATE,'YEAR') FROM DUAL;
SELECT ROUND(SYSDATE, 'MONTH')FROM DUAL;

SELECT TRUNC(sysdate, 'YEAR')FROM DUAL;
SELECT TRUNC(sysdate, 'MONTH')FROM DUAL;

SELECT SYSDATE, NEXT_DAY(SYSDATE,'토요일') FROM DUAL;

SELECT ename, hiredate, LAST_DAY(HIREDATE) FROM employee;

SELECT MONTHS_BETWEEN(SYSDATE,hiredate) FROM employee;

SELECT MONTHS_BETWEEN(SYSDATE,TO_DATE('2020-10-13','YYYY-MM-DD')) FROM DUAL;


SELECT MONTHS_BETWEEN(SYSDATE,TO_DATE('2019-10-13','YYYY-MM-DD')) FROM DUAL;

SELECT ENAME,HIREDATE,TO_CHAR(HIREDATE,'YY-MM'),
        TO_CHAR(HIREDATE,'YYYY/MM/DD DAY') FROM employee;
        
SELECT ADD_MONTHS(sysdate,12) FROM dual;
SELECT ADD_MONTHS(sysdate,6) FROM dual;
SELECT ADD_MONTHS(sysdate,-12) FROM dual;

SELECT NEXT_DAY(sysdate,'토요일') FROM dual;
SELECT NEXT_DAY(sysdate,'saturday') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 6)FROM dual;

select *from employee;

SELECT LAST_DAY(sysdate) FROM dual; 
SELECT LAST_DAY(ADD_MONTHS(sysdate,-9))FROM dual;

SELECT ename,salary, commission,
    NVL(commission,0),
    salary*12+NVL(COMMISSION,0)
    FROM employee
    order by job;