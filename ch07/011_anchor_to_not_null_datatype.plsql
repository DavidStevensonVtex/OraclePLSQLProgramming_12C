DECLARE
    max_available_date DATE NOT NULL :=
        ADD_MONTHS(SYSDATE, 3) ;
    last_ship_date max_available_date%TYPE ;
-- ERROR at line 4:
-- ORA-06550: line 4, column 20:
-- PLS-00218: a variable declared NOT NULL must have an initialization assignment
BEGIN
    NULL;
END ;
/