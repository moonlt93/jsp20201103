SELECT *FROM employee WHERE salary>=1500;
-- employee 테이블 전체를 선택하고, 조건은 salary가 1500이상인 사람
SELECT ename, salary + NVL(commission, 0) FROM employee WHERE salary>=1500;

SELECT*FROM employee WHERE dno=10;
--employee 테이블 전체를 선택하고, 조건은 dno가 10인사람

SELECT*FROM employee WHERE ename='SCOTT';
--employee 테이블 전체를 선택하고, 조건은 scott 이름을 가진 사람

SELECT*FROM employee WHERE hiredate <='1981/01/01';
--81년 01월01일 전에 입사한 사원

SELECT*FROM employee WHERE hiredate>='1981/01/01' AND salary >3000;
--employee 테이블 전체를 선택하고, 조건은 81년 01월01일 전에 입사한 봉급이3000넘는 사원
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary > 3000;
--employee 테이블 전체를 선택하고, 조건은 81년 01월01일 전에 입사하거나 봉급이 3000
SELECT *FROM employee WHERE NOT salary >3000;
--employee 테이블 전체를 선택하고, 조건은 봉급이 3000이하인 사람
SELECT *FROM employee WHERE ename > 'G' AND salary >2000 AND dno <>30;
----employee 테이블 전체를 선택하고,조건은 이름에 'G'가 들어가고 봉급 2000이상 DNO가 30이 아닌 사람.
SELECT *FROM employee WHERE dno=10 and job='MANAGER';
----employee 테이블 전체를 선택하고, 조건은 dno가 10이고 , 매니저인 사람.
SELECT*FROM employee WHERE NOT dno=10;
--employee 테이블 전체를 선택하고, 조건은 dno가 10이 아닌 사람.
SELECT*FROM employee WHERE dno <>10;
--employee 테이블 전체를 선택하고, 조건은 dno가 10이 아닌 사람.
SELECT *FROM employee WHERE SALARY>=1000 AND salary<=1500;
--employee 테이블 전체를 선택하고, 조건은 봉급 1000이상이고 1500이하인 사람.
SELECT *FROM employee WHERE salary<1000 OR salary>1500;

SELECT *FROM employee WHERE commission=300 or commission=500 or commission =1400;
