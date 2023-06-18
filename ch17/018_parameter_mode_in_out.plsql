CREATE OR REPLACE PROCEDURE combine_and_format_names (
    first_name_inout IN OUT VARCHAR2,
    last_name_inout IN OUT VARCHAR2,
    full_name_out OUT VARCHAR2,
    name_format_in IN VARCHAR2 := 'LAST, FIRST'
)
IS
BEGIN
    /* Uppercase the first and last names. */
    first_name_inout := UPPER ( first_name_inout ) ;
    last_name_inout := UPPER ( last_name_inout ) ;

    /* Combine the names as directed by the name format_string. */
    IF name_format_in = 'LAST, FIRST'
    THEN
        full_name_Out := last_name_inout || ', ' || first_name_inout ;
    ELSIF name_format_in = 'FIRST LAST'
    THEN
        full_name_out := first_name_inout || ' ' || last_name_inout ;
    END IF ;
END ;
/

DECLARE
    first_name VARCHAR2(100) := 'David' ;
    last_name  VARCHAR2(100) := 'Stevenson' ;
    full_name  VARCHAR2(200) ;
BEGIN
    combine_and_format_names ( first_name, last_name, full_name, 'LAST, FIRST' ) ;
    DBMS_OUTPUT.PUT_LINE ( 'LAST, FIRST: ' || full_name ) ;

    combine_and_format_names ( first_name, last_name, full_name, 'FIRST LAST' ) ;
    DBMS_OUTPUT.PUT_LINE ( 'FIRST LAST:  ' || full_name ) ;
END ;
/