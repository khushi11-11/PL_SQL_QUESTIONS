-- Cursor 04
-- Write a cursor to fetch employee names and update their department based on specific conditions.

-- SELECT * FROM Department;
SET SERVEROUTPUT ON;

DECLARE
    -- Cursor declaration
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, dept_id
        FROM Employee;
    
    -- Variables for fetching data
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_dept_id Employee.dept_id%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        -- fetching each row into variables
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_dept_id;
        
        -- Exit  stmt for when there are no more rows found
        EXIT WHEN emp_cursor%NOTFOUND;
        
        -- conditional stmts to update department based on specific criteria
        IF v_dept_id = 1105 THEN
            UPDATE Employee
            SET dept_id = 1106
            WHERE emp_id = v_emp_id;
            DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_name || ' moved to department 1106.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('No department change for employee ' || v_emp_name || '.');
        END IF;
    END LOOP;
    CLOSE emp_cursor;
    COMMIT; --to commit/save all the changes
END;
/

-- already run the script with the above condition change or simply switch the departments to see changes in terminal result.