--DML (Data Manipulation Language)
--INSERT,UPDATE,DELETE

CREATE TABLE BANK
(
NAME VARCHAR2(255),
money NUMBER
);

INSERT INTO bank VALUES('IRONMAN',500);
INSERT INTO bank VALUES('CAPTAIN',700);


SELECT *FROM bank;
COMMIT;
--captain ->ironaman 100원 이체
--커밋을 해야 테이블에 실제로 반영
update bank
set money=500
where name='CAPTAIN';

UPDATE bank
SET money =700
WHERE name ='IRONMAN';

select * from bank;

ROLLBACK;

select *from bank;
commit;

select * from bank;



