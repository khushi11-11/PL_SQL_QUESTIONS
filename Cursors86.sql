-- Cursor 06
-- Write a PL/SQL block to use a parameterized cursor to fetch employees in a specific department.

SET SERVEROUTPUT ON;

DECLARE
    -- Declaring a parameterized cursor to fetch employees from a specific department
    CURSOR emp_cursor(p_dept_id NUMBER) IS
        SELECT emp_id, emp_name, emp_salary FROM Employee WHERE dept_id = p_dept_id;
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_salary Employee.emp_salary%TYPE;
    
    -- Variable for department ID
    v_dept_id NUMBER := 1103 ;
BEGIN
    -- Opening the cursor with the parameter 
    OPEN emp_cursor(v_dept_id);
    
    LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || v_emp_name || ', Salary: ' || v_salary);
        DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------');
    END LOOP;
    
    CLOSE emp_cursor;
END;
/
