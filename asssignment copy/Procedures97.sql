-- Procedure 07
-- Write a procedure that accepts an employee ID and department ID and transfers the employee to that department.

CREATE OR REPLACE PROCEDURE transfer_employee (
    p_e_id IN NUMBER,
    p_d_id IN NUMBER
) IS
BEGIN
    UPDATE Employee
    SET dept_id = p_d_id
    WHERE emp_id = p_e_id;

    DBMS_OUTPUT.PUT_LINE('Employee ID ' || p_e_id || ' transferred to Department ID ' || p_d_id);
END;
/

---------EXAMPLE------------

BEGIN
    transfer_employee(105, 1106); 
END;
/
