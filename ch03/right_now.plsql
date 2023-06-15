DECLARE
    l_right_now VARCHAR2(9) ;
BEGIN
    l_right_now := SYSDATE ;
    DBMS_OUTPUT.PUT_LINE(l_right_now) ;
END ;
/