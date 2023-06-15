BEGIN
    FOR loop_counter IN 1 .. 10 
    LOOP
        DBMS_OUTPUT.put_line('loop_counter: ' || loop_counter);
    END LOOP ;
    DBMS_OUTPUT.put_line('Reversing order');
    FOR loop_counter IN REVERSE 1 .. 10
    LOOP
        DBMS_OUTPUT.put_line('loop_counter: ' || loop_counter);
    END LOOP ;
END ;
/