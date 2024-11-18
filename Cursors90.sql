-- Cursor 10
-- Write a PL/SQL block to fetch employee data using a cursor and insert the result into another table.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, emp_salary FROM Employee;
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_salary Employee.emp_salary%TYPE;

BEGIN
    OPEN emp_cursor;
    DBMS_OUTPUT.PUT_LINE('Inserted the following data into table EmployeeBackup:-');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
    LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        
        -- inserting the fetched data into another table (employee_backup)
        INSERT INTO employee_backup (e_id, e_name, e_sal)
        VALUES (v_emp_id, v_emp_name, v_salary);
        
        -- Print a confirmation for each inserted employee
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || v_emp_name || ', Salary: ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
    
    DBMS_OUTPUT.PUT_LINE('Data insertion completed for all employees.');
END;
/
