-- Variables 08
-- Declare a variable v_bonus with no initial value and later assign a value of 1000.

DECLARE
   v_bonus NUMBER;
BEGIN
   v_bonus := 1000;
   DBMS_OUTPUT.PUT_LINE('Bonus:' || v_bonus);
END;
