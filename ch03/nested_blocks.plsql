CREATE OR REPLACE PROCEDURE calc_totals
IS
    year_total NUMBER ;
BEGIN
    year_total := 0 ;

    /* Beginning of nested block */
    DECLARE
        month_total NUMBER ;
    BEGIN
        month_total := year_total / 12 ;
    END set_month_total ;
    /* End of nested block */
END ;
/