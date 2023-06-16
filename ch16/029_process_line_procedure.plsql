CREATE OR REPLACE PROCEDURE process_line ( line IN INTEGER )
IS
BEGIN
    EXECUTE IMMEDIATE 'BEGIN process_line' || line || '; END;' ;
END ;
/