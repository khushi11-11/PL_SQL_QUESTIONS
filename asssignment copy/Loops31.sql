-- Loops 01
-- Write a PL/SQL block that uses a FOR loop to print numbers from 1 to 10.

BEGIN
   FOR i IN 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE(i);
   END LOOP;
END;
