SELECT * FROM employee e, department d;

SELECT *FROM employee e1, employee e2;

SELECT * FROM employee WHERE eno =7369;
SELECT * FROM employee WHERE eno =7902;

SELECT * FROM employee e, department d
WHERE e.dno =d.dno;


SELECT e1.eno, e1.ename, e2.ename, e2.eno
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

select employees.ename||'狼 流加惑包篮'||manager.ename
from employee employees join employee manager
on employees.manager= manager.eno(+);

SELECT employees.ename||'狼 流加惑包篮'|| manager.ename
from employee employees left outer join employee manager
on employees.manager= manager.eno;


SELECT * FROM employee e, department d;
SELECT * FROM employee e1, employee e2;
SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;
SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno
AND e2.eno = 7698;
