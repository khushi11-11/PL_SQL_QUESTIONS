SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE Department (
        dept_id        NUMBER(10) PRIMARY KEY, 
        dept_name      VARCHAR2(100),
        emp_count     Number(2)
    )'; 
    DBMS_OUTPUT.PUT_LINE('Table Department created successfully.');
END;
/

GRANT CONNECT TO C##khushi; 
CREATE USER C##khushi;
GRANT RESOURCE TO C##khushi;
GRANT EXECUTE ANY PROCEDURE TO C##khushi;
CREATE USER C##khushi IDENTIFIED BY mypassword1;
ALTER USER C##khushi QUOTA 50M ON USERS;
ALTER USER C##khushi ACCOUNT UNLOCK;
SELECT * FROM DBA_USERS WHERE USERNAME = 'C##KHUSHI';
GRANT ALL PRIVILEGES TO C##khushi;
ALTER USER C##khushi IDENTIFIED BY khushi123;