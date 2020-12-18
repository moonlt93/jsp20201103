--테이블 변경
--ALTER TABLE
--컬럼 추가, 컬럼 변경, 컬럼 삭제

--컬럼 추가
--ALTER TABLE table_name ADD(new_col DATATYPE,,,);



-- alter table 칼럼 추가
DESC DEPT20;

alter table dept20
add(birth date);

alter table dept20
modify ename varchar2(30);

alter table dept20
drop column ename;

alter table dept20
set unused(eno);

alter table dept20
drop unused columns;

--rename 문

rename dept20 to emp20;

--테이블 구조를 제거하는 drop table문

drop table emp20;

--컬럼 변경
--ALTER TABLE TNAME MODIFY(COLNAME TYPE)

--책 예제(211쪽)

alter table dept20
modify ename varchar2(30);
INSERT INTO dept20
(ename,eno,ANNSAL) VALUES('abcdefghij',4455,550000);
select * FROM dept20;
DESC dept20;

--컬럼 삭제
--alter table tname DROP COLUMN COL_NAME;

DELETE FROM dept20  WHERE ename='abcdefghij';



