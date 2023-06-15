IF award_bonus(employee_id)
THEN
    IF print_check(employee_id)
    THEN
        DBMS_OUTPUT.PUT_LINE('Check issued for ' || employee_id ) ;
    END IF ;
END IF ;