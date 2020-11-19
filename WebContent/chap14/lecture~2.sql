
SELECT * FROM employee where ename like'F%';
-- %를 쓰면 특정문자를 포함하고 길이가 관계없다는 뜻 
--F로 시작 하는 문자열을 찾을때
SELECT*FROM employee where ename ='F';

SELECT * FROM employee where ename like '%M%';
-- 양쪽에 쓰면 m이 어디에 있던지 검색이 가능.

select * FROM employee where ename like'%N';
-- 'N'으로 끝나는 문자열 검색

SELECT * FROM employee where ename like '_A%';
--두번째 글자가 a인 사원 뒤에는 뭐가 오든지 상관없

SELECT *FROM employee where ename like'__A%';
-- 세번째 글자가 A이고, A뒤에는 무엇이 오든지 상관없..

SELECT *FROM employee WHERE ename not like '%A%';
--A가 안들어간 문자열

SELECT ename, dno, commission FROM employee;
-- 사원의 커미션 출력
SELECT * from employee WHERE commission=null;
-- 결과값이 나오지 않는다. commission을 받지 않는 예

SELECT *from employee WHERE commission is null;
-- is null 사용시 commission값이 null인 컬럼을 검색

SELECT *from employee WHERE commission is not null;
--commission의 값이 null이 아닌 로우만 검색.
SELECT
    *
FROM employee ORDER BY SALARY ASC;
--SALARY를 오름차순으로 정렬

SELECT * FROM employee ORDER BY salary;
--디폴트 출력값또한 동일한 결과 

SELECT * FROM employee order by salary desc;
-- 내림차순 정렬

select *from employee ORDER BY ename;
-- 알파벳순 오름차순 정렬

SELECT*from employee order by hiredate desc;
--날짜 데이터를 내림 차순으로 정리

SELECT*FROM employee ORDER BY SALARY DESC, ENAME ASC;
--SALARY는 오름차순 ENAME은 내림차순
