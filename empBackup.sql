-- table for Cursors 90 question
SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE employee_backup (
        e_id NUMBER PRIMARY KEY,
        e_name VARCHAR2(100),
        e_sal NUMBER
    )'; 
    DBMS_OUTPUT.PUT_LINE('Table employee_backup created successfully.');
END;
/



SELECT * FROM employee_backup;