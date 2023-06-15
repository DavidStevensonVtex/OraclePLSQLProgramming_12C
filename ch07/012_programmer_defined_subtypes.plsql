CREATE OR REPLACE PACKAGE MySubTypes AS
    SUBTYPE POSITIVE IS BINARY_INTEGER RANGE 1 .. 2147483647 ;      -- Constrained subtype
    SUBTYPE FLOAT IS NUMBER ;                                       -- Unconstrained subtype

    SUBTYPE big_string IS VARCHAR2(32767) ;
    SUBTYPE big_db_string IS VARCHAR2(4000) ;
END MySubTypes ;
/