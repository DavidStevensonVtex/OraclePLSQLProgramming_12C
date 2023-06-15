BEGIN
    FOR loop_counter IN 1 .. 100
    LOOP
        IF MOD(loop_counter, 2) = 0
        THEN
            DBMS_OUTPUT.put_line('loop_counter: ' || loop_counter);
        END IF ;
    END LOOP ;
    DBMS_OUTPUT.PUT_LINE('multiplying by 2');
    FOR loop_index IN 1 .. 50
    LOOP
        DBMS_OUTPUT.put_line('loop_index * 2: ' || loop_index * 2);
    END LOOP ;
END ;
/