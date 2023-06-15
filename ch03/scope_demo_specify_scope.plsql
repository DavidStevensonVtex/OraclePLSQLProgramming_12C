CREATE OR REPLACE PACKAGE scope_demo AS
    g_global    NUMBER ;

    PROCEDURE set_global ( number_in IN NUMBER ) ;
END scope_demo ;
/

CREATE OR REPLACE PACKAGE BODY scope_demo AS

    PROCEDURE set_global ( number_in IN NUMBER ) IS
        l_salary    NUMBER := 10000 ;
        l_count     PLS_INTEGER ;
    BEGIN

        <<local_block>>
        DECLARE
            l_inner     NUMBER ;
        BEGIN
            SELECT COUNT(*)
            INTO set_global.l_count
            FROM employees
            WHERE department_id = l_inner AND salary > l_salary ;
        END local_block ;

        scope_demo.g_global := set_global.number_in ;
        DBMS_OUTPUT.PUT_LINE('set_global.number_in: ' || set_global.number_in || ' scope_demo.g_global: ' || scope_demo.g_global);
    END set_global ;
END scope_demo ;
/