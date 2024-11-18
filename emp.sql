SET SERVEROUTPUT ON;

BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE Employee (
        emp_id        NUMBER(10) PRIMARY KEY, 
        emp_name      VARCHAR2(100),
        job_title     VARCHAR2(50),
        emp_salary    NUMBER(10, 2),
        hire_date     DATE,
        age           NUMBER(3),
        city          VARCHAR2(50),
        bonus         NUMBER(10, 2),
        dept_id       NUMBER(10)
    )'; 
    DBMS_OUTPUT.PUT_LINE('Table employee created successfully.');
END;
/

-- BEGIN
--     EXECUTE IMMEDIATE 'DROP TABLE EMPLOYEE';
--     DBMS_OUTPUT.PUT_LINE('Table EMPLOYEE deleted successfully.');
-- END;
-- /

-- DROP TABLE employees;