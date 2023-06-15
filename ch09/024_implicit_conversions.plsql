DECLARE
    a NUMBER ;
    b VARCHAR2(30) ;
BEGIN
    a := '-123.45' ;
    b := -123.45 ;
    DBMS_OUTPUT.PUT_LINE('a = ' || a);
    DBMS_OUTPUT.PUT_LINE('b = ' || b) ;
END ;
/