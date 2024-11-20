-- Operators 03
-- Write a PL/SQL block that calculates the modulus of two numbers using the MOD() function.

DECLARE
   a NUMBER := 10;
   b NUMBER := 3;
   result NUMBER;
BEGIN
   result := MOD(a, b);
   DBMS_OUTPUT.PUT_LINE('a: ' || a);
   DBMS_OUTPUT.PUT_LINE('b: ' || b);
   DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
