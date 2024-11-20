-- Loops 02
-- Create a PL/SQL block using a WHILE loop to print all even numbers from 1 to 20.

DECLARE
   num NUMBER := 2;
BEGIN
   WHILE num <= 20 LOOP
      DBMS_OUTPUT.PUT_LINE(num);
      num := num + 2;
   END LOOP;
END;
