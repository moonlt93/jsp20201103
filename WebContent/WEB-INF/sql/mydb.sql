create user c##mydbms  IDENTIFIED BY admin;

create user c##mydbtest IDENTIFIED BY admin;

GRANT all PRIVILEGES to c##mydbms;

GRANT all PRIVILEGES to c##mydbtest;