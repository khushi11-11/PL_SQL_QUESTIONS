-- Cursor 02
-- Create a cursor that retrieves employees from the employees table where salary is greater than 5000.

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, emp_salary FROM Employee WHERE emp_salary > 5000;
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_emp_salary Employee.emp_salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_emp_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID : ' || v_emp_id);
        DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_emp_name);
        DBMS_OUTPUT.PUT_LINE('Salary : ' || v_emp_salary);
        DBMS_OUTPUT.PUT_LINE('-----------------------------------');
    END LOOP;
    CLOSE emp_cursor;
END;
/