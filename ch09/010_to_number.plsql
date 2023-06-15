DECLARE
    -- Explicit conversion functions: TO_NUMBER, TO_BINARY_FLOAT, TO_BINARY_DOUBLE
   nbr    NUMBER := 0.95;
   bf     BINARY_FLOAT := 2;
   nbr1   NUMBER;
   nbr2   NUMBER;
BEGIN
   --Default precedence, promote to binary_float
   nbr1 := nbr * bf;

   --Demote BINARY_FLOAT to NUMBER instead
   nbr2 := nbr * TO_NUMBER (bf);

   DBMS_OUTPUT.put_line (nbr1);
   DBMS_OUTPUT.put_line (nbr2);
-- 1.89999998
-- 1.9
END;
/