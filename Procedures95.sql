-- Procedure 05
-- Write a procedure to calculate and update the bonus of employees based on their department.

CREATE OR REPLACE PROCEDURE update_bonus_by_dept (
    p_d_id IN NUMBER
) IS
    v_bonus NUMBER;
BEGIN
    SELECT AVG(emp_salary) * 0.10 INTO v_bonus FROM Employee WHERE dept_id = p_d_id;

    UPDATE Employee
    SET bonus = v_bonus
    WHERE dept_id = p_d_id;

    DBMS_OUTPUT.PUT_LINE('Bonus updated for Department ID: ' || p_d_id);
END;
/

---------EXAMPLE------------

BEGIN
    update_bonus_by_dept(1107); 
END;
/
