SET SERVEROUTPUT ON;
DECLARE
    row_updated BOOLEAN ;
    boolean_string VARCHAR2(10) ;
BEGIN
--  || CAST(row_updated AS VARCHAR2)
    change_author_name( 'abc', 'def', row_updated ) ;
    boolean_string := CASE WHEN row_updated = true THEN 'true' ELSE 'false' END ;
    DBMS_OUTPUT.PUT_LINE( 'row updated: ' || boolean_string ) ;
END ;
/