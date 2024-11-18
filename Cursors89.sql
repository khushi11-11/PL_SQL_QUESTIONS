-- Cursor 09
-- Create a cursor that joins two tables (employees and departments) and retrieves data.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_dept_cursor IS
        SELECT e.emp_id, e.emp_name, e.emp_salary, d.dept_name
        FROM Employee e JOIN Department d 
        ON e.dept_id = d.dept_id;
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_salary Employee.emp_salary%TYPE;
    v_dept_name Department.dept_name%TYPE;

BEGIN
    OPEN emp_dept_cursor;
    
    LOOP
        FETCH emp_dept_cursor INTO v_emp_id, v_emp_name, v_salary, v_dept_name;
        EXIT WHEN emp_dept_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || v_emp_name || ', Salary: ' || v_salary || ', Department: ' || v_dept_name);
    END LOOP;
    
    CLOSE emp_dept_cursor;
    
    DBMS_OUTPUT.PUT_LINE('Data retrieval from Employee and Department completed.');
END;
/
