DECLARE
    a VARCHAR2(40) := 'This sentence has too many periods......' ;
    b VARCHAR2(40) := 'The number 1' ;
BEGIN
    DBMS_OUTPUT.PUT_LINE(  RTRIM(a, '.') ) ;
    DBMS_OUTPUT.PUT_LINE ( LTRIM ( b, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz' ));
END ;
/