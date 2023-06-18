CREATE OR REPLACE PROCEDURE read_in_out ( n IN OUT NUMBER )
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('n initial = ' || n ) ;
    n := 1 ;
    DBMS_OUTPUT.PUT_LINE('n initial = ' || n ) ;
END ;
/

DECLARE
    n NUMBER := 123 ;
BEGIN
    DBMS_OUTPUT.PUT_LINE ( 'before read_in_out: ' || n ) ;
    read_in_out ( n ) ;
    DBMS_OUTPUT.PUT_LINE ( 'after read_in_out: ' || n ) ;
END ;
/