BEGIN
    <<outer>>
    FOR outer_index IN 1 .. 5
    LOOP
        DBMS_OUTPUT.put_line('Outer index: ' || outer_index);

        <<inner>>
        FOR inner_index IN 1 .. 5
        LOOP
            DBMS_OUTPUT.put_line('  Inner index: ' || inner_index);
            CONTINUE outer ;
        END LOOP inner ;
    END LOOP outer ;
END ;
/