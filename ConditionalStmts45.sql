-- Conditional Statements 05
-- Write a PL/SQL block using a CASE expression to calculate a discount based on a product category.

DECLARE
   v_category VARCHAR2(50) := 'Electronics'; -- example category
   v_discount NUMBER;
BEGIN
   v_discount := CASE v_category
                  WHEN 'Electronics' THEN 0.1
                  WHEN 'Clothing' THEN 0.2
                  ELSE 0
                END;
   DBMS_OUTPUT.PUT_LINE('Discount: ' || v_discount * 100 || '%');
END;
