CREATE OR REPLACE FUNCTION total_sales ( 
        company_id IN company.company_id%TYPE, 
        status_in IN orders.status_code%TYPE := NULL )
    RETURN NUMBER; 
/