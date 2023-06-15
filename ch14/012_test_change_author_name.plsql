SET SERVEROUTPUT ON;
DECLARE
    row_count PLS_INTEGER ;
    boolean_string VARCHAR2(10) ;
BEGIN
    change_author_name( 'abc', 'def', row_count ) ;
    DBMS_OUTPUT.PUT_LINE( 'rows updated: ' || row_count ) ;
END ;
/