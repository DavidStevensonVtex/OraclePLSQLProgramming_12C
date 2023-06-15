DECLARE
    TYPE tt1 IS TABLE OF employees%ROWTYPE ;
    TYPE tt2 IS TABLE OF employees%ROWTYPE ;
    t1 tt1 ;
    t2 tt2 := tt2();
BEGIN
    t1 := t2 ;
--        *
-- ERROR at line 7:
-- ORA-06550: line 7, column 11:
-- PLS-00382: expression is of wrong type
-- ORA-06550: line 7, column 5:
-- PL/SQL: Statement ignored
END ;
/