CREATE OR REPLACE PACKAGE dynsql
IS
    invalid_table_name EXCEPTION ;
        PRAGMA EXCEPTION_INIT (invalid_table_name, -903 );
    invalid_identifier EXCEPTION ;
        PRAGMA EXCEPTION_INIT ( invalid_identifier, -904 );
END dynsql ;
/