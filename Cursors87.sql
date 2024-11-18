-- Cursor 07
-- Use a cursor to fetch and display the top 5 highest-paid employees.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR top_paid_cursor IS
        SELECT emp_id, emp_name, job_title, emp_salary
        FROM Employee
        ORDER BY emp_salary DESC
        FETCH FIRST 5 ROWS ONLY; -- used in Oracle, similar to TOP, LIMIT
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_job_title Employee.job_title%TYPE;
    v_salary Employee.emp_salary%TYPE;
BEGIN
    OPEN top_paid_cursor;
    
    LOOP
        FETCH top_paid_cursor INTO v_emp_id, v_emp_name, v_job_title, v_salary;
        EXIT WHEN top_paid_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || v_emp_name || 'Job Title: ' || v_job_title || ', Salary: ' || v_salary);
    END LOOP;
    
    CLOSE top_paid_cursor;
END;
/
