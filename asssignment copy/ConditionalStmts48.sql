-- Conditional Statements 08
-- Write a PL/SQL block using the CASE statement to print the day of the week based on a number (1-7).

DECLARE
   v_day_number NUMBER := 3; 
   v_day_name VARCHAR2(20);
BEGIN
   v_day_name := CASE v_day_number
                   WHEN 1 THEN 'Sunday'
                   WHEN 2 THEN 'Monday'
                   WHEN 3 THEN 'Tuesday'
                   WHEN 4 THEN 'Wednesday'
                   WHEN 5 THEN 'Thursday'
                   WHEN 6 THEN 'Friday'
                   WHEN 7 THEN 'Saturday'
                   ELSE 'Invalid day'
                 END;
   DBMS_OUTPUT.PUT_LINE('Day: ' || v_day_name);
END;
