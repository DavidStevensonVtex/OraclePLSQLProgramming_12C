CREATE OR REPLACE PROCEDURE calc_annual_sales (
    company_id_in IN company.company_id%TYPE
)
IS
    invalid_company_id exception;
    negative_balance exception;

    duplicate_company   BOOLEAN;
BEGIN
    IF company_id_in < 1 
    THEN
        RAISE invalid_company_id ;
    END IF ;
EXCEPTION
    WHEN NO_DATA_FOUND
    THEN
        dbms_output.put_line('No data found.');
        log_error ();
    WHEN invalid_company_id
    THEN
        dbms_output.put_line('Invalid company id: ' || company_id_in );
        log_error ();
    WHEN negative_balance
    THEN
        log_error ();
END;
/
