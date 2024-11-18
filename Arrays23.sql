-- Arrays 03
-- Create a nested table to store a list of employee salaries and write a PL/SQL block to iterate over them.

DECLARE
   TYPE salary_table IS TABLE OF NUMBER;
   v_salaries salary_table := salary_table(3000, 4000, 5000);
BEGIN
   FOR i IN 1..v_salaries.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE(v_salaries(i));
   END LOOP;
END;
