-- Conditional Statements 06
-- Use nested IF statements to check multiple conditions on employee data.

DECLARE
   v_salary NUMBER := 4500;
   v_years_of_service NUMBER := 6; 
BEGIN
   IF v_salary < 5000 THEN
      IF v_years_of_service < 5 THEN
         DBMS_OUTPUT.PUT_LINE('Employee is not eligible for a raise.');
      ELSE
         DBMS_OUTPUT.PUT_LINE('Employee is eligible for a small raise.');
      END IF;
   ELSE
      DBMS_OUTPUT.PUT_LINE('Employee is eligible for a large raise.');
   END IF;
END;
