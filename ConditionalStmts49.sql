-- Conditional Statements 09
-- Write a PL/SQL block using IF-THEN-ELSE to check if an employee is eligible for promotion based on years of service.

DECLARE
   v_years_of_service NUMBER := 4; -- example years of service
   v_eligible VARCHAR2(10);
BEGIN
   IF v_years_of_service >= 5 THEN
      v_eligible := 'Yes';
   ELSE
      v_eligible := 'No';
   END IF;
   DBMS_OUTPUT.PUT_LINE('Eligible for promotion: ' || v_eligible);
END;
