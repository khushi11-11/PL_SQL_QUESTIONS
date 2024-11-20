-- Procedure 09
-- Write a procedure to update the hire date of all employees in a specific department.

CREATE OR REPLACE PROCEDURE update_hire_date (
    p_d_id IN NUMBER,
    p_new_hire_date IN DATE
) IS
BEGIN
    UPDATE Employee
    SET hire_date = p_new_hire_date
    WHERE dept_id = p_d_id;

    DBMS_OUTPUT.PUT_LINE('Hire dates updated for Department ID: ' || p_d_id);
END;
/

---------EXAMPLE------------

BEGIN
    update_hire_date(130, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
END;
/
-- SELECT * FROM EMPLOYEE;