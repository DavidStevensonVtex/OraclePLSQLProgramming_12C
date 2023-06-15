CREATE OR REPLACE PROCEDURE get_happy (first_name_in IN VARCHAR2, last_name_in IN VARCHAR2)
IS
    l_hiredate DATE ;
BEGIN
    l_hiredate := SYSDATE - 2 ;
    INSERT INTO employees (first_name, last_name, hire_date)
    VALUES (first_name_in, last_name_in, l_hiredate) ;
EXCEPTION
    WHEN DUP_VAL_ON_INDEX
    THEN
        DBMS_OUTPUT.PUT_LINE('Cannot insert.') ;
END ;
/
