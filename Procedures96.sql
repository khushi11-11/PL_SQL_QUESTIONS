-- Procedure 06
-- Create a procedure to fetch and display all employees who have a salary greater than a specified amount.

CREATE OR REPLACE PROCEDURE display_high_salary_employees (
    p_e_sal IN NUMBER
) IS
BEGIN
    FOR rec IN (SELECT emp_name, emp_salary FROM Employee WHERE emp_salary > p_e_sal) LOOP
        DBMS_OUTPUT.PUT_LINE('Employee: ' || rec.emp_name || ' - Salary: ' || rec.emp_salary);
    END LOOP;
END;
/


---------EXAMPLE------------

BEGIN
    display_high_salary_employees(4000); 
END;
/
