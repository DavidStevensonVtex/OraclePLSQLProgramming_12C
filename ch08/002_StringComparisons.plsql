ALTER SESSION SET NLS_COMP=LINGUISTIC ;
ALTER SESSION SET NLS_SORT=BINARY_CI ;
SELECT LEAST( 'JONATHAN', 'Jonathan', 'jon' ) FROM dual ;
/
BEGIN
    IF 'Jonathan' = 'JONATHAN'
    THEN
        DBMS_OUTPUT.PUT_LINE('It is true!') ;
    END IF ;
END ;
/