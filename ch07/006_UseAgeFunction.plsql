DECLARE
    MyAge VARCHAR2(100) ;
BEGIN
    MyAge := age ( TO_DATE ( '1958-06-28', 'YYYY-MM-DD' )) ;
    DBMS_OUTPUT.PUT_LINE('My Age: ' || MyAge);
END ;
/