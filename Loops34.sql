-- Loops 04
-- Write a PL/SQL block that uses a FOR loop in reverse to print numbers from 10 to 1.

BEGIN
   FOR i IN REVERSE 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE(i);
   END LOOP;
END;
