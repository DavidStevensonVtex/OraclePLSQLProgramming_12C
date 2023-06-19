DECLARE
    PROCEDURE proc1 ( n IN PLS_INTEGER ) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('pls_integer version');
    END ;
    PROCEDURE proc1 ( n IN NUMBER ) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('number version') ;
    END ;
BEGIN
    proc1(1.1) ;
    proc1(1) ;
    proc1('123.4');
    proc1('345');
    proc1(CAST('345' AS PLS_INTEGER));
    proc1(CAST('345' AS NUMBER));
END ;
/