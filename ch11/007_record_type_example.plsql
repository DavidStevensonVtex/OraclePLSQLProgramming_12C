DECLARE
    TYPE company_rectype IS RECORD (
        company_id company.company_id%TYPE,
        list_of_names DBMS_SQL.VARCHAR2S
        -- dataset SYS_REFCURSOR
-- dataset SYS_REFCURSOR
--         *
-- ERROR at line 5:
-- ORA-06550: line 5, column 9:
-- PLS-00989: Cursor Variable in record, object, or collection is not supported by this release
-- ORA-06550: line 2, column 5:
-- PL/SQL: Item ignored
    ) ;
BEGIN
    NULL;
END ;
/