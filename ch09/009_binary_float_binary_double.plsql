DECLARE
    my_binary_float    BINARY_FLOAT := .95f;
    my_binary_double   BINARY_DOUBLE := .95d;
    my_number          NUMBER := .95;
BEGIN
    DBMS_OUTPUT.PUT_LINE(my_binary_float);
    DBMS_OUTPUT.PUT_LINE(my_binary_double);
    DBMS_OUTPUT.PUT_LINE(my_number);
-- 9.49999988E-001
-- 9.4999999999999996E-001
-- .95

    IF 0.95f = 0.95d THEN
        DBMS_OUTPUT.PUT_LINE('TRUE: 0.95f = 0.95d');
    ELSE
         DBMS_OUTPUT.PUT_LINE('FALSE: 0.95f = 0.95d');
    END IF ;

    IF ABS(0.95 - 0.95d) < 0.000001d
    THEN
        DBMS_OUTPUT.PUT_LINE('TRUE') ;
    ELSE
        DBMS_OUTPUT.PUT_LINE('FALSE') ;
    END IF;
END;
/