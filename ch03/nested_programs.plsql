CREATE OR REPLACE PROCEDURE calc_totals ( fudge_factor_in IN NUMBER ) 
AS
    subtotal    NUMBER := 0 ;

    /*  Beginning of nested block (in this case a procedure). Notice
        we're completely inside the declaration section of calc_totals. */
    PROCEDURE compute_running_total ( increment_in IN PLS_INTEGER ) AS
    BEGIN
        /* subtotal, declared above, is both in scope and visible */
        subtotal := subtotal + increment_in * fudge_factor_in ;
    END;
    /* End of nested block */
BEGIN
    FOR month_idx IN 1..12
    LOOP
        compute_running_total ( month_idx ) ;
    END LOOP ;
    DBMS_OUTPUT.PUT_LINE('Fudged total for year: ' || subtotal);
END ;
/
        