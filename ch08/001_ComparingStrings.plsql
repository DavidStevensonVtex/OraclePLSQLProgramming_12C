DECLARE
    name1   VARCHAR2(30) := 'Andrew Sears' ;
    name2   VARCHAR2(30) := 'ANDREW SEARS' ;
BEGIN
    IF LOWER(name1) = LOWER(name2)
    THEN
        DBMS_OUTPUT.PUT_LINE('The names are the same') ;
    END IF ;
END ;
/