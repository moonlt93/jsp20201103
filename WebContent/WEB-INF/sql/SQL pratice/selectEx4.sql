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

SELECT substr('오라클매니아',3,4),substrb('오라클매니아',3,4) FROM dual;

SELECT * FROM employee WHERE (TO_CHAR(hiredate, 'YYYY-MM-DD'))='1987';

SELECT ename,INSTR(ename, 'AL') FROM employee;
SELECT INSTR(ename, 'TIGER TEA TIRE TON ','T',2,2)FROM DUAL;

SELECT INSTR('Oracle mania','a') from dual;
-- 문자 갯수 찾기

select INSTR('Oracle mania','a',5,2) from dual;
--oracle mania 'a'가 5번째부터 2번째로 발견되는 위치 

select INSTR('오라클매니아', '라'),
        INSTRB('오라클매니아','라') 
        FROM DUAL;
--        BYTE 수 때문에 INSTRB는 '라'에서4임 한글 3BYTE

SELECT ename, LPAD(ename,10,'#') FROM employee;
-- 왼쪽자리를 특정기호로 채우기
SELECT ename, RPAD(ename,10,'*') FROM employee;
--오른쪽 자리를 특정기호로 채우기 

SELECT TRIM(' ABC ') FROM dual;
--빈공간 삭제
SELECT RTRIM('  ABC  ') FROM dual;
--왼쪽 공백 제거
SELECT LTRIM('  ABC  ') FROM dual;
--오른쪽 공백 제거

SELECT 98.7654,
    ROUND(98.7654),
    ROUND(98.7654,2),
    ROUND(98.7654,-1)
    FROM DUAL;
--특정 자릿수에서 반올림. 1 2 소숫점 2번째자리 3 소숫점 1번째 자리 

SELECT 98.7654,
    TRUNC(98.7654),
    TRUNC(98.7654,2),
    TRUNC(98.7654,-1)
    FROM DUAL;
       
