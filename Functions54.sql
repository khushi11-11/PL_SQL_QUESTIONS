-- Function 04
-- Create a function that accepts two numbers as input and returns their sum.

CREATE OR REPLACE FUNCTION calculate_sum(num1 IN NUMBER, num2 IN NUMBER) RETURN NUMBER IS 
    result NUMBER;
BEGIN
    result := num1 + num2;
    RETURN result;
END;
/

---------EXAMPLE------------

DECLARE
  sum_result NUMBER;
BEGIN
  sum_result := calculate_sum(2098, 27365); 
  DBMS_OUTPUT.PUT_LINE('Sum of 2098 and 27365 = ' || sum_result);
END;
/