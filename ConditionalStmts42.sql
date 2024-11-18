-- Conditional Statements 02
-- Use an IF-THEN-ELSE statement to check if an employee is full-time or part-time based on their hours worked.

DECLARE
   v_hours_worked NUMBER := 35; -- example hours
BEGIN
   IF v_hours_worked >= 40 THEN
      DBMS_OUTPUT.PUT_LINE('Employee is full-time.');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Employee is part-time.');
   END IF;
END;
