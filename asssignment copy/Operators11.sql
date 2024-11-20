-- Operators 01
-- Write a PL/SQL block to demonstrate the use of arithmetic operators (+, - , * , /) on variables.

DECLARE
   a NUMBER := 10;
   b NUMBER := 5;
   add NUMBER;
   sub NUMBER;
   product NUMBER;
   div NUMBER;
BEGIN
   add := a + b;
   sub := a - b;
   product := a * b;
   div := a / b;

   DBMS_OUTPUT.PUT_LINE('a = ' || a); 
   DBMS_OUTPUT.PUT_LINE('b = ' || b); 
   DBMS_OUTPUT.PUT_LINE('Addition :' || add);
   DBMS_OUTPUT.PUT_LINE('Subtraction :' || sub);
   DBMS_OUTPUT.PUT_LINE('Multiplication :' || product);
   DBMS_OUTPUT.PUT_LINE('Division :' || div);
END;
