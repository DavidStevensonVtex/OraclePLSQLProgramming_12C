DECLARE
    d2s INTERVAL DAY TO SECOND ;
BEGIN
    SELECT INTERVAL '72:15' HOUR TO MINUTE INTO d2s FROM DUAL ;
    DBMS_OUTPUT.PUT_LINE(d2s) ;
END ;
/