-- Variables 05
-- Write a PL/SQL block to declare two variables v_age and v_city, and assign 30 and 'New York' respectively.

DECLARE
   v_age NUMBER := 30;
   v_city VARCHAR2(50) := 'New York';
BEGIN
   DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
   DBMS_OUTPUT.PUT_LINE('City: ' || v_city);
END;
