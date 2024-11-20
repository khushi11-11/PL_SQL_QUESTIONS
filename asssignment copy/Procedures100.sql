-- Procedure 10
-- Create a procedure that accepts an employee ID and updates their job title based on their performance.

CREATE OR REPLACE PROCEDURE update_job_title (
    p_e_id IN NUMBER,
    p_performance IN VARCHAR2 -- will be passed as an arg irrespective of whether it is a column in Employee table or not
) IS
BEGIN
    IF p_performance = 'Excellent' THEN
        UPDATE Employee SET job_title = 'Senior Manager' WHERE emp_id = p_e_id;
    ELSIF p_performance = 'Good' THEN
        UPDATE Employee SET job_title = 'Manager' WHERE emp_id = p_e_id;
    ELSE
        UPDATE Employee SET job_title = 'Assistant Manager' WHERE emp_id = p_e_id;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Job title updated for Employee ID: ' || p_e_id);
END;
/

---------EXAMPLE------------

BEGIN
    update_job_title(107, 'Excellent'); 
END;
/

-- SELECT * FROM Employee;