DECLARE
    ReturnValue NUMBER ;
BEGIN
    ReturnValue := jealousy_level ('Tom') ;
    DBMS_OUTPUT.PUT_LINE('Return Value: ' || ReturnValue);
END ;
/