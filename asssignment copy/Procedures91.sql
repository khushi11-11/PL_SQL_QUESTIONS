-- Procedure 01
-- Write a procedure to update an employee's salary based on their performance rating.

CREATE OR REPLACE PROCEDURE update_salary_performance (
    p_emp_id IN NUMBER,
    p_rating IN NUMBER
) IS
    v_increment NUMBER;
BEGIN
    IF p_rating >= 5 THEN
        v_increment := 0.20;  -- 20% increment for top performers
    ELSIF p_rating >= 3 THEN
        v_increment := 0.10;  -- 10% increment for average performers
    ELSE
        v_increment := 0.05;  -- 5% increment for others
    END IF;

    UPDATE employees
    SET salary = salary + (salary * v_increment)
    WHERE emp_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Salary updated for Employee ID: ' || p_emp_id);
END;
/


-- performance rating wala column hi ni h