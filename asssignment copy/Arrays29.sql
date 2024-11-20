-- Arrays 09
-- Write a PL/SQL block to loop through all elements of a nested table and print each value.
DECLARE
   TYPE salary_table IS TABLE OF NUMBER;
   v_salaries salary_table := salary_table(3000, 4000, 5000, 6000);
BEGIN
   FOR i IN 1..v_salaries.COUNT LOOP
      DBMS_OUTPUT.PUT_LINE(v_salaries(i));
   END LOOP;
END;
