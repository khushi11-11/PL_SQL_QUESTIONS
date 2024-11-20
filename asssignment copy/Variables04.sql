-- Variables 04
-- Create a PL/SQL block that declares a date variable v_hire_date and assigns SYSDATE to it.

DECLARE
   v_hire_date DATE := SYSDATE;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hire Date: ' || v_hire_date);
END;
