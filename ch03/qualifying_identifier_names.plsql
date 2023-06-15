CREATE OR REPLACE PROCEDURE calc_totals AS
    l_salary    NUMBER := 123 ;
BEGIN
    DECLARE
        l_salary    NUMBER := 456 ;
    BEGIN
        l_salary := calc_totals.l_salary ;
        DBMS_OUTPUT.PUT_LINE('inner: l_salary: ' || l_salary);
    END ;

    DBMS_OUTPUT.PUT_LINE('outer: l_salary: ' || l_salary);
END ;
/