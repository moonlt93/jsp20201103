--기본값 찾기

CREATE TABLE const12(
id NUMBER DEFAULT 0,
name VARCHAR2(30));

INSERT INTO const12 (id,name)
VALUES(3,'jone');
INSERT INTO const12 (name)
VALUES('jane');
INSERT INTO const12 (id,name)
VALUES(null,'dul');


select* from const12;

select *from user_constraints
WHERE table_name='const12';

SELECT * FROM USER_TAB_COLUMNS
WHERE table_name='CONST12';