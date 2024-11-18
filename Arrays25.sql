-- Arrays 05
-- Use the COUNT method to get the number of elements in a nested table.

DECLARE
   TYPE salary_table IS TABLE OF NUMBER;
   v_salaries salary_table := salary_table(3000, 4000, 5000);
BEGIN
   DBMS_OUTPUT.PUT_LINE('total elements: ' || v_salaries.COUNT);
END;
