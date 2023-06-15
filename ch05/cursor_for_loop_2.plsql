DECLARE
    CURSOR countries_cur IS
        SELECT country_id, country_name FROM countries ;
    country_rec countries_cur%ROWTYPE ;
BEGIN
    OPEN countries_cur ;
    LOOP
        FETCH countries_cur INTO country_rec ;
        EXIT WHEN countries_cur%NOTFOUND ;
        DBMS_OUTPUT.PUT_LINE(country_rec.country_id || '   ' || country_rec.country_name) ;
    END LOOP ;
    CLOSE countries_cur ;
END ;
/