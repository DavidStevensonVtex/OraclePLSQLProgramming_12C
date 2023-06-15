DECLARE
    l_right_now VARCHAR2(8) ;   -- a length of 9 allows this to work without exception.
BEGIN
    l_right_now := SYSDATE ;
    DBMS_OUTPUT.PUT_LINE(l_right_now) ;
EXCEPTION
    WHEN VALUE_ERROR
    THEN
        DBMS_OUTPUT.PUT_LINE('I bet l_right_now is too small for the default date format!');
END ;
/