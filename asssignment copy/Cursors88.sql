-- Cursor 08
-- Write a PL/SQL block to update employee data using a cursor that fetches rows from a table.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor(d_id NUMBER) IS
        SELECT emp_id, emp_salary, age FROM Employee
        WHERE dept_id = d_id;

    v_emp_id Employee.emp_id%TYPE;
    v_salary Employee.emp_salary%TYPE;
    v_age Employee.age%TYPE;
    
BEGIN

    -- SELECT * FROM Department;
    OPEN emp_cursor(1102);
        
    DBMS_OUTPUT.PUT_LINE('Updated employee information~');
    LOOP
        FETCH emp_cursor INTO v_emp_id, v_salary, v_age;
        
        EXIT WHEN emp_cursor%NOTFOUND;
        
        IF v_age < 30 THEN
            UPDATE Employee
            SET emp_salary = v_salary * 1.10  -- 10% increase
            WHERE emp_id = v_emp_id;
        ELSE
            UPDATE Employee
            SET emp_salary = v_salary * 1.05  -- 5% increase
            WHERE emp_id = v_emp_id;
        END IF;

        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', New Salary: ' || v_salary || ', Age: ' || v_age);
    END LOOP;
    
    CLOSE emp_cursor;
    
    DBMS_OUTPUT.PUT_LINE('Salary updates for department 1102 completed.');
END;
/


