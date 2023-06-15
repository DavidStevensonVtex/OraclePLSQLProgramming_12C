CREATE OR REPLACE PROCEDURE ( code_in IN PLS_INTEGER )
IS
    l_message error_table.error_string%TYPE ;
BEGIN
    SELECT error_string
    INTO l_message
    FROM error_table
    WHERE error_number = code_in AND string_language = USERENV('LANG') ;

    raise_application_error(code_in, l_message);
END ;
/