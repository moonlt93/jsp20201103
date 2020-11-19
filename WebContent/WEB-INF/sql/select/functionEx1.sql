SELECT sysdate FROM dual;



SELECT LOWER(ename) AS ename FROM employee;

SELECT UPPER(ename) AS name FROM employee;

SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle mania') AS name FROM dual;

SELECT 'ORACLE MANIA',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    INITCAP('Oracle mania')
    FROM DUAL;
    
SELECT ename, lower(ename),job,initcap(job) from employee;

SELECT eno, ename,dno FROM employee where ename='scott';

select * FROM employee WHERE lower(ename) LIKE '%a%';

SELECT ename, LENGTH(ename) length FROM employee;
SELECT LLENGTH('웹 프로그래밍')FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;
SELECT LENGTHB('웹프로그래밍')FROM DUAL;


