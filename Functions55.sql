-- Function 05
-- Write a function to check if an employee is eligible for a bonus based on their salary.

CREATE OR REPLACE FUNCTION bonus_eligibility(e_id IN NUMBER) RETURN VARCHAR2 IS
  result VARCHAR2(20);
  e_sal NUMBER;
  threshold NUMBER := 75000; -- threshold : predefined (salary) value or limit set to chek bonus eligibilty
BEGIN
    SELECT emp_salary INTO e_sal FROM Employee WHERE emp_id=e_id;
  IF e_sal < threshold THEN
    result := 'Eligible';
  ELSE
    result := 'Not Eligible';
  END IF;
  RETURN result;
END;
/

---------EXAMPLE------------

DECLARE
  res VARCHAR2(25);
BEGIN
  res := bonus_eligibility(128);
  DBMS_OUTPUT.PUT_LINE('Employee with the ID 128 is ' || res || ' for a Bonus!');
END;
/