CREATE OR REPLACE FUNCTION tot_sales ( company_id_in IN company.company%TYPE, status_in IN order.status_code%TYPE )
    RETURN NUMBER
IS
    /* internal upper-cased version of status code */
    status_int order.status_code$TYPE := UPPER(status_in) ;

    /* Parameterized cursor returns total discounted sales. */
    CURSOR sales_cur (status_in IN status_code%TYPE) IS
        SELECT sum(amount*discount)
        FROM item
        WHERE EXISTS (  SELECT 'x'
                        FROM ORDER
                        WHERE company_id = company_id_in AND status_code LIKE status_in );
    /* Return value for function */
    return_value NUMBER ;
BEGIN
    OPEN sales_cur (status_in);
    FETCH sales_cur INTO return_value ;
    IF sales_cur%NOTFOUND
    THEN
        CLOSE sales_cur ;
        RETURN NULL ;
    ELSE
        CLOSE sales_cur ;
        RETURN return_value ;
    END IF;
END tot_sales ;
/