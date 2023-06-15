DECLARE
    first_day   DATE ;
    LAST_DAY    DATE ;
BEGIN
    first_day := SYSDATE ;
    last_day  := ADD_MONTHS(first_day, 6);

    DBMS_OUTPUT.PUT_LINE('first_day: ' || first_day || ' last_day: ' || last_day) ;
END ;
/