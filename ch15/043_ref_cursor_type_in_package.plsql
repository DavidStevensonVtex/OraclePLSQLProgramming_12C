CREATE OR REPLACE PACKAGE companycursor
IS
    /* Define the REF CURSOR type. */
    TYPE curvar_type IS REF CURSOR RETURN company%ROWTYPE ;
END companycursor ;
/