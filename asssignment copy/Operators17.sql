-- Operators 07
-- Write a PL/SQL block to check if two variables contain the same value using the equality (=) operator.

DECLARE
   a NUMBER := 10;
   b NUMBER := 10;
BEGIN
   DBMS_OUTPUT.PUT_LINE('num 1: ' || a);
   DBMS_OUTPUT.PUT_LINE('num 2: ' || b);
   IF a = b THEN
      DBMS_OUTPUT.PUT_LINE('Values are equal');
   ELSE 
      DBMS_OUTPUT.PUT_LINE('Values are not equal');
   END IF;
END;
