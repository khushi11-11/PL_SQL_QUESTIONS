-- Loops 06
-- Write a PL/SQL block using a WHILE loop to print the square of numbers less than 100.

DECLARE
   num NUMBER := 1;
BEGIN
   WHILE num < 100 LOOP
      DBMS_OUTPUT.PUT_LINE(num * num);
      num := num + 1;
   END LOOP;
END;
