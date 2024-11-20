-- Operators 09
-- Write a PL/SQL block to calculate the square of a number using the exponentiation operator.

DECLARE
   a NUMBER := 5;
   result NUMBER;
BEGIN
   result := POWER(a, 2);
   DBMS_OUTPUT.PUT_LINE('num: ' || a);
   DBMS_OUTPUT.PUT_LINE('square of ' || a || ': ' || result);
END;
