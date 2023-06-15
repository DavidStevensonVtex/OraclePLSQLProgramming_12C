DECLARE
    shares_sold NUMBER := 123 ; -- 12,300 shares (blocks of 100)
BEGIN
    DBMS_OUTPUT.PUT_LINE( TO_CHAR(shares_sold, '999G9V99') );
--   12,300
END ;
/