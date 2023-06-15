BEGIN
    <<year_loop>>
    FOR year_number IN 1800 .. 1995
    LOOP
        <<month_loop>>
        FOR month_number IN 1 .. 12
        LOOP
            -- IF year_loop.year_number = 1900 THEN
            --     EXIT year_loop ;
            -- END IF ;

            EXIT year_loop WHEN year_loop.year_number = 1900 ;

            DBMS_OUTPUT.PUT_LINE('Year:' || year_number || '  month_number: ' || month_number);
        END LOOP month_loop ;
    END LOOP year_loop ;
END ;
/