BEGIN
    FOR l_index IN 1 .. 10
    LOOP
        CONTINUE WHEN MOD(l_index, 2) = 0 ;
        DBMS_OUTPUT.put_line('odd number: loop index: ' || l_index);
    END LOOP ;
END ;
/