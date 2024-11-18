-- Conditional Statements 07
-- Write a PL/SQL block that uses an IF statement to determine whether an employee gets a bonus.

DECLARE
   v_performance_rating NUMBER := 4; -- example performance rating
   v_bonus VARCHAR2(10);
BEGIN
   IF v_performance_rating >= 4 THEN
      v_bonus := 'Yes';
   ELSE
      v_bonus := 'No';
   END IF;
   DBMS_OUTPUT.PUT_LINE('Eligible for bonus: ' || v_bonus);
END;
