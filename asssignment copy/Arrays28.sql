-- Arrays 08
-- Declare an associative array to store employee phone numbers and retrieve a phone number using its index.

DECLARE
   TYPE phone_array IS TABLE OF VARCHAR2(15) INDEX BY PLS_INTEGER;
   v_phone_numbers phone_array;
BEGIN
   v_phone_numbers(1) := '9131440746';
   v_phone_numbers(2) := '6268217416';
   DBMS_OUTPUT.PUT_LINE(v_phone_numbers(1)); 
END;
