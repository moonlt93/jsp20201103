--1번 

SELECT ename,salary,salary+300 FROM employee ;
--이름 봉급 봉급+300을 사원테이블에서 가져와라

--2번
SELECT ename, salary,salary*12+100 FROM employee ORDER BY salary*12+100 desc;

--3번
SELECT ename, salary FROM employee WHERE salary>2000 ORDER BY salary DESC;

--4번
SELECT ename,dno FROM employee WHERE eno=7788;
--사원 번호가 7788인 사원찾기 
--이름과 부서번호를 사원테이블에서 출력 조건은 사번이 7788
SELECT ename,dno FROM employee where eno='7788';

--5번
SELECT ename,salary FROM employee WHERE salary>2000 and salary<3000;
SELECT ename,salary FROM employee  WHERE salary not between 2000 and 3000;

--6번
SELECT ename,job,hiredate FROM employee WHERE hiredate between '81/02/20' AND '81/05/01';

--사원 테이블에서 이름 직업 입사번호를 고른다 조건은, 고용일이 '81/02/20' AND '81/05/01'사이인 사람;

--7번
SELECT ename,dno FROM employee where dno in(20,30) ORDER BY ename;
--사원번호가 20,30인 사원 중에서 내림차순 정렬.

--8번
SELECT ename,salary FROM employee  WHERE salary not between 2000 and 3000;

SELECT ename,job ,salary FROM employee WHERE job IN('clerk','SALESMAN') AND SALARY NOT in(1600,950,1300);

--9번 
SELECT ename,hiredate FROM employee WHERE hiredate like '81%';


--10번
SELECT ename,job FROM employee WHERE MANAGER IS NULL;

--11번
SELECT ename,SALARY,COMMISSION FROM employee ORDER BY SALARY,COMMISSION DESC;

--12번
SELECT ename FROM employee WHERE ename like '__R%';

--13번
SELECT ename FROM employee WHERE ename like '%A%' and ename like'%E%';


--14번
SELECT ename, salary,commission FROM employee WHERE commission >=500;
--15번