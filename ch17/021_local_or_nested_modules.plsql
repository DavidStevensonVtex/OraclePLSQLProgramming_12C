DECLARE
    PROCEDURE show_date ( date_in IN DATE ) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE ( TO_CHAR ( date_in, 'Month DD, YYYY' ) );
    END ;
BEGIN
    NULL ;
END ;
/