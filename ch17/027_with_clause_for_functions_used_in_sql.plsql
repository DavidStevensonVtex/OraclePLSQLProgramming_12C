WITH FUNCTION betwnstr (string_in IN VARCHAR2
                                   , start_in  IN PLS_INTEGER
                                   , end_in    IN PLS_INTEGER
                                    )
   RETURN VARCHAR2
IS
BEGIN
   RETURN (SUBSTR (string_in, start_in, end_in - start_in + 1));
END ;
SELECT betwnstr ( last_name, 3, 5 ) AS LastNameCharacters3Through5
FROM employees
FETCH FIRST 10 ROWS ONLY ;
/