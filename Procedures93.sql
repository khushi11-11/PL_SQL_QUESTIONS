-- Procedure 03
-- Write a procedure to delete an employee record from the employees table based on their ID.

CREATE OR REPLACE PROCEDURE delete_employee (
    p_e_id IN NUMBER
) IS
BEGIN
    DELETE FROM Employee WHERE emp_id = p_e_id;

    DBMS_OUTPUT.PUT_LINE('Employee with ID ' || p_e_id || ' deleted successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID: ' || p_e_id);
END;
/

---------EXAMPLE------------

BEGIN
    delete_employee(103);
END;
/
