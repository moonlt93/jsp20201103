SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS ?ó∞Î¥? FROM employee;
SELECT ename, salary, salary*12 ?ó∞Î¥? FROM employee;
-- ?ïú Ï§? Ï£ºÏÑù
/*
  ?ó¨?ü¨Ï§? Ï£ºÏÑù
*/
SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) ?ï© FROM employee;


/*
SELECT [DISTINCT] {*|column[alia]...}
sql ¥Îº“πÆ¿⁄ ±∏∫∞x ∞™¿∫ ±∏∫∞
*/
SELECT distinct(dno) FROM employee;
SELECT distinct dno FROM employee;
