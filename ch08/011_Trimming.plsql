DECLARE
    x VARCHAR2(30) := '......Hi there!......' ;
BEGIN
    DBMS_OUTPUT.PUT_LINE (   TRIM(LEADING '.' FROM x)   ) ;
    DBMS_OUTPUT.PUT_LINE (   TRIM(TRAILING '.' FROM x)  ) ;
    DBMS_OUTPUT.PUT_LINE (   TRIM( BOTH '.' FROM x)     ) ;
    -- The default is to trim from both sides.
    DBMS_OUTPUT.PUT_LINE (   TRIM('.' from x)           ) ;

    -- The default trim chracter is the space.
    DBMS_OUTPUT.PUT_LINE (   TRIM(x)                    );

    -- If you want to trim a set of characters, your options are RTRIM and LTRIM.
    DBMS_OUTPUT.PUT_LINE( RTRIM(LTRIM(x, ',.;!'), ',.;!') );
END ;
/