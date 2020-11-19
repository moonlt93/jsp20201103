SELECT * FROM employee;
SELECT * FROM SALGRADE;

delete from salgrade;
INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);
commit;

SELECT * FROM employee e, salgrade s
WHERE e.salary BETWEEN S.losal AND s.hisal;

select ename,salary,grade
from employee, salgrade
where salary between losal and hisal;

select e.ename,d.dname, e.salary,s.grade
from employee e, department d, salgrade s
where e.dno = d.dno
and salary BETWEEN losal and hisal;

SELECT * FROM employee e, department d, salgrade s
WHERE e.dno =d.dno
AND e.salary BETWEEN s.losal AND s.hisal
AND e.eno=7788;

SELECT e.ename 
			 from employee e,salgrade s 
			  where e.salary BETWEEN s.losal AND s.hisal  
			 AND s.grade =5;
             
SELECT e.ename FROM employee e, salgrade s WHERE e.salary BETWEEN s.losal AND s.hisal AND s.grade=5;
             
select * from employee;