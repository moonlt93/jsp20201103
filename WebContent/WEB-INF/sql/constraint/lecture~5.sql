--join

select * from employee ,department;

select*
from employee,department
where employee.dno=department.dno;

--equi join 조인 대상이 되는 테이블에서 공통적으로 존재하는 컬럼 값이 같은 조건(=)

select eno,ename,dname
from employee,department
where employee.dno=department.dno and eno=7788;

--사번,사원이름,부서이름을 출력한다. 부서, 사원테이블로부터
--조건은 사원테이블 부서번호= 부서테이블 


select employee.eno,employee.ename,department.dname
from employee,department
where employee.dno=department.dno
and employee.eno=7788;

select eno,ename,dname,employee.dno
from employee, department
where employee.dno= department.dno
and eno=7788;

--사번, 사원이름, 부서이름, 사원의 부서번호를 골라서 띄운다.
--조건은 사원테이블 부서번호, 부서테이블  end 

--테이블에 별칭 사용. 30자 까지 가능,.from에서 명시 

select e.eno , e.ename ,d.dname , e.dno
from employee e ,department d
where e.dno =d.dno
and e.eno=7788;


SELECT e.eno,e.ename,d.dname,dno
from employee e natural join department d
where e.eno=7788;



SELECT e.eno, e.ename,d.dname,dno
from employee e join department d
using(dno) where e.eno =7788;

--데이터 유형이 일치x using 절을 사용하여 EQUI JOIN에 사용될 칼럼명만 지정.

SELECT e.eno,e.ename,d.dname,e.dno
from employee e join department d
on e.dno =d.dno
where e.eno =7788;

--임의로 조건을 지정, 조인할 칼럼을 지정하려면 on절에 사용.


--NON EQUI JOIN 특정 범위 내에 있는지를 조사하기 위해 사용 

select ename,salary,grade
from employee,salgrade
where salary between losal and hisal;
-- 사원이름, 봉급, 등급을 컬럼으로 갖는다. 사원, 봉급등급테이블에서 
--조건은 봉급이 최저와 최고사이로 찾는다.

select e.ename,d.dname, e.salary, s.grade
from employee e, department d , salgrade s
where e.dno =d.dno
and salary between losal and hisal;
-- 세개 테이블 참조



SELECT employees.ename as"사원이름",manager.ename as"직속상관이름"
from employee employees, employee manager
where employees.manager=manager.eno;

--자기테이블에 있는 칼럼을 참조할때 

UPDATE DEPT_COPY
SET DNAME='PROGRAMMING'
WHERE DNO=10;

