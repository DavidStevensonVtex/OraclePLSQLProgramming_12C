CREATE OR REPLACE PACKAGE pkgvars
IS
    num NUMBER ;
END ;
/

BEGIN
    dynPLSQL ( 'pkgvars.num := 5');
    DBMS_OUTPUT.PUT_LINE(pkgvars.num);
END ;
/