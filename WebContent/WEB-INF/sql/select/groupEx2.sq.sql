SELECT dno as "부서번호",avg(salary)as "급여평균"
from employee
group by dno;

select  avg(salary) as"급여평균"
from employee group by dno;

select dno, max(salary)
from employee
group by dno
having max(salary)>=3000;

select max(avg(salary))from employee group by dno;

select max(salary) as"maximum",
        min(salary)as"minimum",
        sum(salary)as"sum",
        round(avg(salary))as"Average"
        from employee;
        

select job as "Job",
        max(salary) as"Maximum",
        min(salary)as"Minimum",
        sum(salary)as"Sum",
        round(avg(salary))as"Average"
        from employee
       group by job;

SELECT hiredate, COUNT(*)
    FROM employee
    group by hiredate;


SELECT max(salary)-Min(salary) as difference
    FROM employee;
    
    
    

SELECT MIN(salary)
from employee
having not min(salary)>=2000
order by Min(salary) desc;

select dno,
    count(*)as "Number of people",
    round(avg(salary),2)as"salary"
    from employee
    group by dno
    order by dno asc;
    
    SELECT COUNT(DISTINCT JOB) AS "직업 종류의 개수" FROM employee;
    
    select ename, max(salary)from employee;
    
    
    
SELECT max(salary),min(salary),avg(salary),
			sum(salary)
			FROM employee
			Where dno= 10;
            
            SELECT ename, salary * 12 + NVL(commission, 0)  
            FROM employee  
             WHERE eno = 7499;
    