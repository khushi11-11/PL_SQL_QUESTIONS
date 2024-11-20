-- Operators 04
-- Use comparison operators (= , !=, <, >, <=, >=) to compare two variables and print the result.

DECLARE
    var1 NUMBER := 10;
    var2 NUMBER := 20;
BEGIN
    DBMS_OUTPUT.PUT_LINE('num1: ' || var1);
    DBMS_OUTPUT.PUT_LINE('num2: ' || var2);
    IF var1 = var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is equal to ' || var2);
    ELSIF var1 != var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is not equal to ' || var2);
    ELSIF var1 < var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is less than ' || var2);
    ELSIF var1 > var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is greater than ' || var2);
    ELSIF var1 <= var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is less than or equal to ' || var2);
    ELSIF var1 >= var2 THEN
        DBMS_OUTPUT.PUT_LINE(var1 || ' is greater than or equal to ' || var2);
    END IF;
END;
/
