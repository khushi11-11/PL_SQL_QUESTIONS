-- Variables 09
-- Write a PL/SQL block that declares a variable v_total and assigns the sum of v_salary and v_bonus.

DECLARE
   v_salary NUMBER := 5000;
   v_bonus NUMBER := 1000;
   v_total NUMBER;
BEGIN
   v_total := v_salary + v_bonus;
   DBMS_OUTPUT.PUT_LINE('Salary:' || v_salary);
   DBMS_OUTPUT.PUT_LINE('Bonus:' || v_bonus);
   DBMS_OUTPUT.PUT_LINE('TOTAL:' || v_total);
END;
