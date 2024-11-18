-- Function 09
-- Create a function to check whether a number is prime.

CREATE OR REPLACE FUNCTION is_prime(num IN NUMBER) RETURN VARCHAR2 IS
  i NUMBER;
BEGIN
  IF num <= 1 THEN
    RETURN 'Not Prime';
  END IF;

  FOR i IN 2 .. FLOOR(SQRT(num)) LOOP
    IF MOD(num, i) = 0 THEN
      RETURN 'Not Prime';
    END IF;
  END LOOP;

  RETURN 'Prime';
END;
/

---------EXAMPLE------------

DECLARE
  result VARCHAR2(10);
BEGIN
  result := is_prime(29); 
  DBMS_OUTPUT.PUT_LINE('29 is: ' || result); 
END;
/
