DECLARE
    a VARCHAR2(30) := 'Jeff' ;
    b VARCHAR2(30) := 'Eric' ;
    c VARCHAR2(30) := 'Andrew' ;
    d VARCHAR2(30) := 'Aaron' ;
    e VARCHAR2(30) := 'Matt' ;
    f VARCHAR2(30) := 'Joe' ;
BEGIN
    DBMS_OUTPUT.PUT_LINE( RPAD(a,10) || LPAD(b,10) ) ;
    DBMS_OUTPUT.PUT_LINE( RPAD(c,10) || LPAD(d,10) ) ;
    DBMS_OUTPUT.PUT_LINE( RPAD(e,10) || LPAD(f,10) ) ;
END ;
/