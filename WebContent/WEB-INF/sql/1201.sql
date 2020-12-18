SELECT ename,dno
FROM employee
WHERE
ename='SCOTT';


SELECT ename,job,salary
from employee
where salary=(select min(salary)
                 from employee);
                 
                 
select dno,min(salary)
from employee
group by dno 
having min(salary)>(select min(salary)
                    from employee
                    where dno=30);

 
 SELECT MIN(salary)
 FROM employee
 GROUP BY dno
 HAVING min(salary)>(select min(salary)
                    from employee
                    where dno=30);
                    
                    
select eno,ename,job,salary
from employee
where salary < any (select salary
                    from employee
                    where job='SALESMAN')
                    and job<>'SALESMAN';
                    
                    
--다중 행 서브쿼리 
--IN 

SELECT MIN(salary)
FROM employee
GROUP  BY eno;
--dno 별 최소 연봉.

SELECT eno, ename,salary
FROM employee
WHERE salary IN
            (SELECT MIN(salary)
            FROM employee
            GROUP  BY eno);

SELECT eno,ename,salary
FROM employee
WHERE(dno,salary) IN (SELECT dno, MIN(salary)
                        FROM employee
                        GROUP  BY dno);
                        

SELECT eno,ename,job,salary
from employee
where salary< any(select salary
                  from employee
                  where job='SALESMAN')
                  and job<>'SALESMAN';
                
SELECT eno,ename,job ,salary
from employee
where salary < all(select salary
                  from employee
                  where job='SALESMAN')
                  and job<>'SALESMAN';
                  
                  
                  

                  
SELECT salary
FROM employee
WHERE job='SALESMAN';

SELECT ename,job
FROM employee
WHERE job=(select job
            from employee
            where eno=7788);

                    
                    
                
                
                
                
SELECT ename,job
FROM employee
WHERE salary > (SELECT salary
                FROM employee
                where eno=7499);
                


SELECT ename,job,salary 
FROM employee
WHERE salary=(SELECT min(salary)
             FROM employee);
             
             
SELECT job, round(avg(salary),1)
from employee
group by job
having round(avg(salary),1) = (SELECT min(round(avg(salary),1))
                                from employee
                                group by job);


select ename, salary , dno
from employee
where salary in(select min(salary)
                from employee
                group by dno);
                
select eno, ename,job ,salary
from employee
WHERE salary < any(SELECT salary
                    FROM employee
                    where job='ANALYST')
                    AND JOB<>'ANALYST';
                    
                    
                    
SELECT ename
from employee
where eno in(select eno
            from employee
            where manager is null);
            
select ename
from employee
where eno in(select eno
             from employee
             where manager is not null);

select ename, hiredate
from employee
where dno=(select dno
            from employee
            where ename='BLAKE')
            AND ename<>'BLAKE';

SELECT eno,ename
from employee
where salary > (select avg(salary)
                from employee)
                order by salary asc;

SELECT eno,ename
from employee
    where dno in(select dno
                from department
                where loc='DALLAS');
                
SELECT ENAME , SALARY
FROM employee
where dno=(select dno
         from department
         where dname='RESEARCH');
         
SELECT
    *
FROM employee
where eno =9999;



