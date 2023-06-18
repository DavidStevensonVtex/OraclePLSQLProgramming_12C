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
    -- Revised to have only one return statement, as the last executable line in block.
    OPEN sales_cur (status_in);
    FETCH sales_cur INTO return_value ;
    IF sales_cur%NOTFOUND
    THEN

        return_value := NULL ;
    END IF;
    CLOSE sales_cur ;
    RETURN return_value ;
END tot_sales ;
/