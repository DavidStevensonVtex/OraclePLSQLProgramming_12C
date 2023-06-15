BEGIN
    FOR country IN ( SELECT * FROM countries)
    LOOP
        DBMS_OUTPUT.PUT_LINE(country.country_id || '    ' || country.country_name);
    END LOOP ;
END ;
/