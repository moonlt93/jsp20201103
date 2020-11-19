--pratice 1

select *
from employee,department
where employee.dno = department.dno;
-- employee와 department로부터 모든 칼럼 선택 조건 e.dno와 d.dno는 같다

SELECT ENO, ENAME, DNAME
FROM EMPLOYEE,DEPARTMENT
WHERE EMPLOYEE.DNO = department.dno
and eno=7788;
-- 부서테이블과 사원 테이블에서 번호가 같은 테이블 나열.

select employee.eno,employee.ename, department.dname, employee.dno
FROM employee,department 
where employee.dno = department.dno
and employee.eno=7788;
--칼럼명 앞에 테이블명 명시(where)

SELECT eno,ename,dname,employee.dno
from employee,department
where employee.dno = department.dno
and eno=7788;
-- 부분적으로 테이블명 명시
select e.eno,e.ename, d.dname, e.dno
from employee e , department d
where e.dno=d.dno
and e.eno=7788;
-- 별명 지어서 짧게 써주기 


select e.eno, e.ename,d.dname,dno
from employee e natural join department d
where e.eno=7788;

select e.eno,e.ename,d.dname,dno
from employee e join department d
using(dno)
where e.eno=7788;

select e.eno,e.ename,d.dname,e.dno
from employee e join department d
on e.dno= d.dno
where e.eno=7788;


--급여 등급 테이블

select *from salgrade;

select ename,salary,grade
from employee,salgrade
where salary between losal and hisal;

select e.ename,d.dname,e.salary,s.grade
from employee e, department d ,salgrade s
where e.dno = d.dno
and salary between losal and hisal;

SELECT EMPLOYEES.ENAME AS "사원 이름", MANAGER.ENAME AS"직속상관이름"
FROM EMPLOYEE EMPLOYEES, EMPLOYEE MANAGER
WHERE EMPLOYEES.MANAGER= MANAGER.ENO;

SELECT EMPLOYEES.ENAME||'의 직속상관은'|| MANAGER.ENAME
FROM EMPLOYEE EMPLOYEES JOIN EMPLOYEE MANAGER
ON EMPLOYEES.MANAGER = MANAGER.ENO;

SELECT employees.ename||'의 직속상관은'|| manager.ename
from employee employees join employee manager
on employees.manager = manager.eno(+);

SELECT employees.ename||'의 직속상관은'||manager.ename
from employee employees  left outer join employee manager
on employees.manager= manager.eno;

SELECT ename,dname,loc FROM employee e join department d on e.dno=d.dno;

SELECT dno,job,loc
from employee inner join department
using(dno) where dno =10;

select ename, dname, loc 
from employee natural join department
where commission>0;

SELECT e.ename, d.dname
FROM employee e, department d
where e.dno= d.dno
and e.ename like '%A%';

SELECT ename, job,dno,dname
FROM employee natural join department
where loc ='NEW YORK';

SELECT emp.ename as"Employee",
        emp.manager as"Emp#",
        mgr.eno as "Manager",
        mgr.ename as "Mgr#"
from employee emp, employee mgr
where emp.manager = mgr.eno;

SELECT me.ename as 이름,me.dno as 부서번호,other.ename as 동료
        from employee me,employee other
        where me.dno = ohther.dno
        and me.ename='SCOTT'
        and other.ename != 'SCOTT';
        
