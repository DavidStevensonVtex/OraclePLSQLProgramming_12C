SET SERVEROUTPUT ON ;
BEGIN
    LOOP
        -- data gathering procedure
        DBMS_LOCK.sleep(1);    -- do nothing for ten seconds
        DBMS_OUTPUT.put_line('hello');
    END LOOP;
END ;
/