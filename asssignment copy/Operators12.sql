-- Operators 02
-- Use the concatenation operator (||) to join two strings in a PL/SQL block.

DECLARE
   first_name VARCHAR2(20) := 'Khushi';
   last_name VARCHAR2(20) := 'Verma';
   full_name VARCHAR2(40);
BEGIN
   full_name := first_name || ' ' || last_name;
   DBMS_OUTPUT.PUT_LINE('First Name: ' || first_name);
   DBMS_OUTPUT.PUT_LINE('Last Name: ' || last_name); 
   DBMS_OUTPUT.PUT_LINE('Full Name: ' || full_name); 
END;
