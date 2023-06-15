DECLARE
    report_requested BOOLEAN;
BEGIN
    -- report_requested := true ;
    report_requested := false ;
    report_requested = NULL ;
    IF report_requested
    THEN
        DBMS_OUTPUT.PUT_LINE('report_requested = TRUE') ;
    ELSIF NOT report_requested
    THEN
        DBMS_OUTPUT.PUT_LINE('report_requested = FALSE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('report_requested = NULL') ;
    END IF;
END ;
/