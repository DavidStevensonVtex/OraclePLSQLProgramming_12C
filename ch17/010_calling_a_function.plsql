DECLARE
    v_nickname VARCHAR2(100) := favorite_nickname('Steven');

    my_parrot pet_t := pet_t(1001, 'Mercury', 'African Grey', TO_DATE('09/23/1996', 'MM/DD/YYYY'));

    my_first_book books%ROWTYPE ;

    l_name employees.last_name%TYPE ;
BEGIN
    IF my_parrot.age() < INTERVAL '50' YEAR
    THEN
        DBMS_OUTPUT.PUT_LINE('Still a youngster!');
    END IF ;

    my_first_book := book_info.onerow('1-56592-335-9');

    SELECT last_name
    INTO l_name
    FROM employees
    WHERE employee_id = 206 ;
END ;
/