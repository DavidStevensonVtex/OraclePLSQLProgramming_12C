DECLARE
    no_salary_when_fired NUMBER ;
BEGIN
    -- EXECUTE IMMEDIATE 
    --         'UPDATE employees SET salary = :newsal
    --         WHERE hire_date IS NULL'
    --     USING NULL ;
--               *
-- ERROR at line 5:
-- ORA-06550: line 5, column 15:
-- PLS-00457: expressions have to be of SQL types
-- ORA-06550: line 2, column 5:
-- PL/SQL: Statement ignored

    EXECUTE IMMEDIATE 
            'UPDATE employees SET salary = :newsal
            WHERE hire_date IS NULL'
        USING no_salary_when_fired ;


    EXECUTE IMMEDIATE 
            'UPDATE employees SET salary = :newsal
            WHERE hire_date IS NULL'
        USING TO_NUMBER(NULL) ;
END ;
/