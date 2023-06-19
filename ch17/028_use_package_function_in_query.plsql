CREATE OR REPLACE PACKAGE pkg
IS
    FUNCTION year_number
        RETURN INTEGER ;
END ;
/

CREATE OR REPLACE PACKAGE BODY pkg
IS
    c_year_number CONSTANT INTEGER := 2013 ;

    FUNCTION year_number
        RETURN INTEGER
    IS
    BEGIN
        RETURN c_year_number ;
    END ;
END ;
/

SELECT pkg.year_number AS yearnumber
FROM employees
WHERE employee_id = 138 ;
/