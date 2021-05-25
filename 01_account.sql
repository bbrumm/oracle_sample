/*
01_account.SQL
create accounts for hr schema
run as sys or system
*/


/*
Set the pluggable database if you're running this on Oracle v12 or later.
*/
ALTER SESSION SET CONTAINER = ORCLPDB1;


/*testing PDB */
/*
select name, pdb from v$services order by pdb, name;

show con_name;

select name,open_mode  from v$pdbs;

select USERNAME,ACCOUNT_STATUS,PASSWORD_VERSIONS from dba_users;
*/
/*
drop all ansd reset
*/
DROP USER HR CASCADE;

CREATE USER HR IDENTIFIED BY hrpass;

ALTER USER HR DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

ALTER USER HR TEMPORARY TABLESPACE TEMP;

GRANT CONNECT TO HR;

GRANT CREATE SESSION, CREATE VIEW, CREATE TABLE, ALTER SESSION, CREATE SEQUENCE TO HR;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE, UNLIMITED TABLESPACE TO HR;
