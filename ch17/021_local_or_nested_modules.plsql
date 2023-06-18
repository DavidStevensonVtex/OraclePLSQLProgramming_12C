DECLARE
    PROCEDURE show_date ( date_in IN DATE ) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE ( 'show_date: ' || TO_CHAR ( date_in, 'Month DD, YYYY' ) );
    END ;
BEGIN
    show_date ( sysdate ) ;
END ;
/

BEGIN
    show_date ( sysdate - 7 ) ;
END ;
/