CREATE OR REPLACE PROCEDURE my_procedure ( month_in PLS_INTEGER )
IS
    invalid_month EXCEPTION ;
    PRAGMA EXCEPTION_INIT(invalid_month, -1843);
BEGIN
    if month_in < 1 OR month_in > 12
    THEN
        RAISE invalid_month ;
    END IF ;
EXCEPTION
    WHEN invalid_month
    THEN
        dbms_output.put_line('invalid month: ' || month_in);
    WHEN OTHERS
    THEN
        dbms_output.put_line('other exception') ;
END ;
/
