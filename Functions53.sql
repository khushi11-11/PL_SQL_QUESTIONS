-- Function 03
-- Write a function that takes a number and returns its factorial.

CREATE OR REPLACE FUNCTION factorial(n IN NUMBER) RETURN NUMBER IS
  result NUMBER := 1;
BEGIN
  FOR i IN 1..n LOOP
    result := result * i;
  END LOOP;
  RETURN result;
END;
/

---------EXAMPLE------------

SELECT factorial(5) AS factorial_of_5 FROM dual;

DECLARE
  fact NUMBER(10);
BEGIN
  fact := factorial(10);
  DBMS_OUTPUT.PUT_LINE('Factorial of 10 is ' || fact);
END;
/