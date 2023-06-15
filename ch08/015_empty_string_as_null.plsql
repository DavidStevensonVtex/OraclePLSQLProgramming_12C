DECLARE
    empty_varchar2 VARCHAR2(100) := '' ;
    empty_char CHAR(10) := '' ;
BEGIN
    IF empty_varchar2 IS NULL THEN
        dbms_output.put_line('empty_varchar2 is NULL');
    END IF ;

    IF empty_varchar2 = '' THEN
        dbms_output.put_line('empty_varchar2 is empty string');
    END IF ;

    IF '' IS NULL THEN
        DBMS_OUTPUT.PUT_LINE(''''' is NULL');
    END IF ;

    IF empty_char IS NULL THEN
        DBMS_OUTPUT.PUT_LINE('empty_char is NULL');
    ELSIF empty_char IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('empty_char IS NOT NULL') ;
    END IF ;

    IF empty_char = '' THEN
        DBMS_OUTPUT.PUT_LINE('empty_char is empty string');
    END IF ;

END ;
/