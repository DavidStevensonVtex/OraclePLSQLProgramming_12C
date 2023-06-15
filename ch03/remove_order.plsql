CREATE OR REPLACE PROCEDURE remove_order ( order_id IN NUMBER ) AS
BEGIN
    DELETE orders WHERE order_id = remove_order.order_id ;
END ;
/