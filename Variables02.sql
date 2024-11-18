-- Variables 02
-- Write a PL/SQL block that declares a variable v_name and assigns a value 'John' to it.

DECLARE
   v_name VARCHAR2(20) := 'John';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
END;