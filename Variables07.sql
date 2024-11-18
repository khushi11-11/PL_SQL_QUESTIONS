-- Variables 07
-- Write a PL/SQL block to calculate the total salary of an employee (using variables for basic salary, bonus, and tax).

DECLARE
   basic_salary NUMBER := 3000;
   bonus NUMBER := 500;
   tax NUMBER := 0.1; -- 10%
   total_salary NUMBER;
BEGIN
   total_salary := (basic_salary + bonus) - (basic_salary * tax);
   DBMS_OUTPUT.PUT_LINE('Basic Salary:' || basic_salary);
   DBMS_OUTPUT.PUT_LINE('Bonus:' || bonus);
   DBMS_OUTPUT.PUT_LINE('Tax:' || tax*100 || '%');
   DBMS_OUTPUT.PUT_LINE('TOTAL SALARY:' || total_salary);
END;
