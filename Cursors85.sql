-- Cursor 05
-- Create a cursor that fetches employees and calculates their bonus based on salary.

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor IS
        SELECT emp_id, emp_name, emp_salary FROM Employee;
    
    v_emp_id Employee.emp_id%TYPE;
    v_emp_name Employee.emp_name%TYPE;
    v_salary Employee.emp_salary%TYPE;
    v_bonus NUMBER(10, 2);
BEGIN
    OPEN emp_cursor;
    
    LOOP
        -- fetching rows into variables
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_salary;
        
        EXIT WHEN emp_cursor%NOTFOUND;
        
        -- bonus calculation based on salary
        IF v_salary < 5000 THEN
            v_bonus := v_salary * 0.05;  -- 5% bonus
        ELSIF v_salary BETWEEN 5000 AND 10000 THEN
            v_bonus := v_salary * 0.10;  -- 10% bonus
        ELSE
            v_bonus := v_salary * 0.15;  -- 15% bonus
        END IF;
        
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_emp_id || ', Name: ' || v_emp_name || ', Salary: ' || v_salary || ', Bonus: ' || v_bonus);
        DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------');
    END LOOP;
    
    CLOSE emp_cursor;
END;
/
