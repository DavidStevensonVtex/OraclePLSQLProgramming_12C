DECLARE
    CURSOR countries_cur IS
        SELECT country_id, country_name FROM countries ;
BEGIN
    FOR country_rec IN countries_cur
    LOOP
        DBMS_OUTPUT.PUT_LINE(country_rec.country_id || '   ' || country_rec.country_name) ;
    END LOOP ;
END ;
/