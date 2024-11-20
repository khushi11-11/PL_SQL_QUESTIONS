-- Variables 01
-- Declare a variable v_salary to store an employee's salary and initialize it with 5000.

SET SERVEROUTPUT ON;

DECLARE
   v_salary NUMBER := 5000;
BEGIN
   DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;