-- Procedure 04
-- Create a procedure that inserts a new employee into the employees table.

CREATE OR REPLACE PROCEDURE insert_employee (
    p_e_id IN NUMBER,
    p_e_name IN VARCHAR2,
    p_job IN VARCHAR2,
    p_e_sal IN NUMBER,
    p_hire_date IN DATE,
    p_age IN NUMBER,
    p_city IN VARCHAR2,
    p_bonus IN NUMBER,
    p_d_id IN NUMBER
) IS
BEGIN
    INSERT INTO Employee (emp_id, emp_name, job_title, emp_salary, hire_date, age, city, bonus, dept_id)
    VALUES (p_e_id, p_e_name, p_job, p_e_sal, p_hire_date, p_age, p_city, p_bonus, p_d_id);

    DBMS_OUTPUT.PUT_LINE('New employee inserted with ID: ' || p_e_id);
END;
/

---------EXAMPLE------------

BEGIN
    insert_employee(205, 'Anshita Gupta', 'Senior Developer', 89000, TO_DATE('2023-10-21', 'YYYY-MM-DD'), 21, 'Pune', 11000, 1107); 
END;
/

SELECT * FROM EMPLOYEE;

--error aara h !!