-- Variables 03
-- Declare a constant variable c_tax_rate with a value of 0.05.

DECLARE
   c_tax_rate CONSTANT NUMBER := 0.05;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Tax Rate: ' || c_tax_rate);
END;
