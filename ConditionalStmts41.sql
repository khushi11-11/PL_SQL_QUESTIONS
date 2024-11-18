-- Conditional Statements 01
-- Write a PL/SQL block using an IF-THEN statement to check if an employee's salary is greater than 5000.

DECLARE
   v_salary NUMBER := 6000; 
BEGIN
   IF v_salary > 5000 THEN
      DBMS_OUTPUT.PUT_LINE('Salary is greater than 5000.');
   END IF;
END;
