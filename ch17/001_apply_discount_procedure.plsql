CREATE OR REPLACE PROCEDURE apply_discount ( company_id_in IN company.company_id%TYPE, discount_in IN NUMBER )
IS
    min_discount        CONSTANT NUMBER := 0.05 ;
    max_discount        CONSTANT NUMBER := 0.25 ;
    invalid_discount    EXCEPTION ;
BEGIN
    IF discount_in BETWEEN min_discount AND max_discount
    THEN
        UPDATE item
        SET item_amount = item_amount * ( 1 - discount_in)
        WHERE EXISTS (  SELECT 'x' 
                        FROM order 
                        WHERE order.order_id = item.order_id AND order.company_id = company_id_in ) ;
        IF SQL%ROWCOUNT = 0 THEN
            RAISE NO_DATA_FOUND ;
        END IF ;
    ELSE
        RAISE invalid_discount ;
    END IF ;
EXCEPTION
    WHEN invalid_discount
    THEN
        DBMS_OUTPUT.PUT_LINE('The specified discount is invalid.');
    WHEN NO_DATA_FOUND
    THEN
        DBMS_OUTPUT.PUT_LINE('No orders in the system for company: ' || TO_CHAR(company_id_in)) ;
END apply_discount ;
/