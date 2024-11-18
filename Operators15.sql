-- Operators 05
-- Write a PL/SQL block using logical operators (AND, OR, NOT) to combine multiple conditions.

DECLARE
   a NUMBER := 10;
   b NUMBER := 5;
   c NUMBER := 15;
BEGIN
   DBMS_OUTPUT.PUT_LINE('a: ' || a);
   DBMS_OUTPUT.PUT_LINE('b: ' || b);
   DBMS_OUTPUT.PUT_LINE('c: ' || c);
   IF (a > b AND a < c) THEN
      DBMS_OUTPUT.PUT_LINE('a is between b and c');
   ELSIF (a > c OR b < c) THEN
      DBMS_OUTPUT.PUT_LINE('One condition is true');
   END IF;
END;
