CREATE OR REPLACE PROCEDURE process_data ( data_in IN orders%ROWTYPE, data_action IN VARCHAR2) AS
    status INTEGER ;
BEGIN
    -- First in series of validations.
    IF data_in.ship_data IS NOT NULL
    THEN
        status := validate_shipdate(data_in.ship_date);
        IF status != 0 THEN GOTO end_of_procedure; END IF ;
    END IF ;

    -- Second in series of validations
    IF data_in.order_date IS NOT NULL
    THEN
        status := validate_orderdate(data_in.orders_date);
        IF status != 0 THEN GOTO end_of_procedure; END IF ;
    END IF;

    -- ... More validations ....

    <<end_of_procedure>>
    NULL;
END ;
