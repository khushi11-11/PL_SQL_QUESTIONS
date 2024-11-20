-- Operators 06
-- Demonstrate the use of the || operator to concatenate two string variables.

DECLARE
   str1 VARCHAR2(20) := 'Hello';
   str2 VARCHAR2(20) := 'World';
   result VARCHAR2(40);
BEGIN
   result := str1 || ' ' || str2;
   DBMS_OUTPUT.PUT_LINE('String 1: ' || str1);
   DBMS_OUTPUT.PUT_LINE('String 2: ' || str2);
   DBMS_OUTPUT.PUT_LINE('Result: ' || result);
END;
