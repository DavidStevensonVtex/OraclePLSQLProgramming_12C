CREATE OR REPLACE PROCEDURE mega_bucks ( company_id_in IN INTEGER )
IS
    cv              sys_refcursor;
    mega_bucks      company.ceo_compensation%TYPE ;
    achieved_by     company.cost_cutting%TYPE ;
BEGIN
    OPEN cv FOR
        'SELECT ceo_compensation, cost_cutting
        FROM ' || company_table_name ( company_id_in ) ;

    LOOP
        FETCH cv INTO mega_bucks, achieved_by ;
        -- ...
    END LOOP ;

    CLOSE cv ;
END ;
/