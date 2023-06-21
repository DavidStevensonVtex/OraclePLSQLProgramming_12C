CREATE OR REPLACE TRIGGER no_create
    AFTER CREATE ON SCHEMA
BEGIN
    -- RAISE_APPLICATION_ERROR ( -20000, 'ERROR: Objects cannot be created in the production database.' ) ;

    RAISE_APPLICATION_ERROR ( -20000, 
        'Cannot create the ' || ORA_DICT_OBJ_TYPE ||
        ' named '            || ORA_DICT_OBJ_NAME ||
        ' as requested by '  || ORA_DICT_OBJ_OWNER ||
        ' in production.' ) ;
END ;
/

CREATE TABLE testtablecreation ( id INTEGER ) ;
/

-- *
-- ERROR at line 1:
-- ORA-04088: error during execution of trigger 'SYSTEM.NO_CREATE'
-- ORA-00604: error occurred at recursive SQL level 1
-- ORA-20000: ERROR: Objects cannot be created in the production database.
-- ORA-06512: at line 2

-- Version 2
-- *
-- ERROR at line 1:
-- ORA-04088: error during execution of trigger 'SYSTEM.NO_CREATE'
-- ORA-00604: error occurred at recursive SQL level 1
-- ORA-20000: Cannot create the TABLE named TESTTABLECREATION as requested by SYSTEM in production.
-- ORA-06512: at line 4