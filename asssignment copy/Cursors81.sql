-- Cursor 01
-- Write a PL/SQL block to declare a cursor for fetching employee names from the employees table.

SET SERVEROUTPUT ON;

DECLARE
    -- declaring a cursor to fetch employee names
    CURSOR emp_cursor IS
        SELECT emp_name FROM Employee; --fetching
    
    -- Variable to store each employee name
    v_emp_name Employee.emp_name%TYPE; --storing
BEGIN
    -- Open the cursor and fetch employee names
    OPEN emp_cursor;
    
    LOOP
        -- Fetch each row into the variable
        FETCH emp_cursor INTO v_emp_name; --storing fetched data into variable
        
        -- Exit the loop when no more rows are found
        EXIT WHEN emp_cursor%NOTFOUND; --if no data found
        
        -- Print the employee name
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_emp_name);
    END LOOP;
    
    -- Close the cursor
    CLOSE emp_cursor;
END;
/
