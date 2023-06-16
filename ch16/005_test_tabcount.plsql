BEGIN
    IF tabcount('employees') > 100
    THEN
        DBMS_OUTPUT.PUT_LINE('We are growing fast!');
    END IF ;
END ;
/