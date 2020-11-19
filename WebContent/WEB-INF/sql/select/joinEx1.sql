SELECT * FROM employee;
SELECT * FROM department;

SELECT * FROM EMPLOYEE, DEPARTMENT;

SELECT ENO,ENAME, DNO,DNAME FROM employee, department;

SELECT eno,ename, employee.dno edno,department.dno ddno
from employee,department
WHERE eno =7369 AND employee.dno =department.dno;
--중복테이블 검색 ?

SELECT * FROM EMPLOYEE, DEPARTMENT WHERE EMPLOYEE.DNO = DEPARTMENT.DNO;

SELECT eno, ename,dname
from employee, department
where employee.dno=department.dno
and eno =7788;

select employee.eno, employee.ename, department.dname,department.dno
from employee, department 
where employee.dno = department.dno
and employee.eno=7788;

--equi join 
SELECT *FROM employee,department
WHERE employee.dno =department.dno;

SELECT *FROM employee  e, department  d
WHERE e.dno =d.dno
AND e.eno =7369;

SELECT e.eno,e.ename,e.dno,d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

select e.eno,e.ename,e.dno,d.dname  
from employee e,department d
      WHERE e.dno=d.dno
      and e.ename='SCOTT';
      
select dno,job,loc
from employee inner join department
using(dno)
where dno =10;

--join 
SELECT *From employee natural join department;
SELECT *From employee natural join department
WHERE eno =7782;

--join using 
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno)
WHERE eno =7788;

--join on 
SELECT *FROM employee e JOIN department d ON e.dno= d.dno;

SELECT *FROM employee e JOIN department d ON e.dno= d.dno
WHERE eno =7788;

SELECT eno, ename,dname from employee,department
where employee.dno=department.dno and eno=7788;

select e.eno, e.ename, d.dname, e.dno
from employee e,department d
where e.dno=d.dno
and e.eno=7788;

select e.eno, e.ename , d.dname , dno
from employee e natural join department d
where e.eno=7788;

select e.eno, e.ename,d.dname,e.dno
from employee e join department d
on e.dno=d.dno
where e.eno=7788;

select *from salgrade;

select ename,salary,grade
from employee, salgrade
where salary  between losal and hisal;




      
      




