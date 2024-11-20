-- Conditional Statements 03
-- Write a PL/SQL block using an ELSIF statement to print grades based on a student's score.

DECLARE
   v_score NUMBER := 85; 
BEGIN
   IF v_score >= 90 THEN
      DBMS_OUTPUT.PUT_LINE('Grade: A');
   ELSIF v_score >= 80 THEN
      DBMS_OUTPUT.PUT_LINE('Grade: B');
   ELSIF v_score >= 70 THEN
      DBMS_OUTPUT.PUT_LINE('Grade: C');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Grade: F');
   END IF;
END;
