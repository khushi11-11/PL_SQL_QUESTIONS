-- Loops 03
-- Use a basic LOOP to print the first 5 values of an employee's bonus, exiting when it reaches 5.

DECLARE
   bonus NUMBER := 500;
   count NUMBER := 1;
BEGIN
   LOOP
      DBMS_OUTPUT.PUT_LINE(bonus);
      count := count + 1;
      EXIT WHEN count > 5;
   END LOOP;
END;
