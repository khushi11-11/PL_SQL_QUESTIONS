-- Loops 07
-- Demonstrate the use of EXIT WHEN to exit from a loop when a certain condition is met.

DECLARE
   count NUMBER := 1;
BEGIN
   LOOP
      DBMS_OUTPUT.PUT_LINE(count);
      count := count + 1;
      EXIT WHEN count > 5; 
   END LOOP;
END;
