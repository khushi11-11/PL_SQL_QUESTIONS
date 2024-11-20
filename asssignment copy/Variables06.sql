-- Variables 06
-- Use %TYPE to declare a variable v_emp_id that holds the same type as employee_id in the employees table.


BEGIN
    -- Create the employees table
    EXECUTE IMMEDIATE 'CREATE TABLE employees (
       employee_id NUMBER(10) PRIMARY KEY,
       name VARCHAR2(50),
       salary NUMBER(10, 2),
       department VARCHAR2(50)
    )';

    -- Insert values into the employees table
    INSERT INTO employees (employee_id, name, salary, department)
    VALUES (101, 'Riya Jain', 55000, 'HR');

    INSERT INTO employees (employee_id, name, salary, department)
    VALUES (102, 'Akshat Gupta', 65000, 'Finance');

    INSERT INTO employees (employee_id, name, salary, department)
    VALUES (103, 'Suraj Shinde', 75000, 'IT');

    -- Commit the changes to the database
    COMMIT;

    DECLARE
        v_emp_id employees.employee_id%TYPE;
    BEGIN
        SELECT employee_id INTO v_emp_id FROM employees WHERE employee_id = 101;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id);
    END;
END;
