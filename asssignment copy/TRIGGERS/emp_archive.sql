-- archive table for Trigger-76 question
SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE emp_archive (
        e_id NUMBER,
        e_name VARCHAR2(50),
        e_sal NUMBER(10, 2),
        d_id NUMBER(10),
        deleted_date DATE
    )'; 
    DBMS_OUTPUT.PUT_LINE('Table emp_archive created successfully.');
END;
/