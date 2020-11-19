SELECT commission,nvl(commission,0) from employee;

SELECT sum(salary) FROM employee;

SELECT AVG(salary) FROM employee;

SELECT MIN(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT *FROM employee;

SELECT COUNT(*) FROM employee;

select sum(salary) as"급여총액",
        avg(salary) as"급여평균",
        max(salary) as"최대급여",
        min(salary) as"최소급여"
        
        FROM employee;
    
        
        
select max(hiredate),
        min(hiredate)
        from employee;
        
SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;       
SELECT MAX(commission) FROM employee;
SELECT min(commission) FROM employee;       
SELECT avg(commission) FROM employee;

select count(*)as "사원의 수"
from employee;

select count(commission)as "커미션 받는 사원 수"
from employee;

select count(distinct job) as"직업종류의 갯수"
from employee;
-- 중복 제거

SELECT COUNT(distinct (job)) FROM employee;

