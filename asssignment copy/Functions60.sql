-- Function 10
-- Write a function that accepts a string and returns it in reverse order.

CREATE OR REPLACE FUNCTION reverse_string(input_string IN VARCHAR2) RETURN VARCHAR2 IS
  reversed_string VARCHAR2(32767);
  i NUMBER;
BEGIN
  reversed_string := '';
  
  FOR i IN REVERSE 1..LENGTH(input_string) LOOP
    reversed_string := reversed_string || SUBSTR(input_string, i, 1);
  END LOOP;

  RETURN reversed_string;
END;
/

---------EXAMPLE------------

DECLARE
  result VARCHAR2(50);
BEGIN
  result := reverse_string('Hello World');
  DBMS_OUTPUT.PUT_LINE('Reversed string: ' || result); 
END;
/