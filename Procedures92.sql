-- Procedure 02
-- Create a procedure that accepts an employee ID and prints the employee’s details.

CREATE OR REPLACE PROCEDURE get_emp_details (
    p_e_id IN NUMBER
) IS
    v_e_name Employee.emp_name%TYPE;
    v_salary Employee.emp_salary%TYPE;
BEGIN
    SELECT emp_name, emp_salary INTO v_e_name, v_salary -- table data into variables
    FROM Employee WHERE emp_id = p_e_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_e_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID: ' || p_e_id);
END;
/

---------EXAMPLE------------

BEGIN
    get_emp_details(102);
END;
/
