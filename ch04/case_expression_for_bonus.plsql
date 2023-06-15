DECLARE
    salary      NUMBER := 20000 ;
    employee_id NUMBER := 36325 ;

    PROCEDURE give_bonus(emp_id IN NUMBER, bonus_amt IN NUMBER) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(emp_id);
        DBMS_OUTPUT.PUT_LINE(bonus_amt);
    END;
BEGIN
    give_bonus(employee_id,
        CASE
            WHEN salary >= 10000 AND salary <= 20000 THEN 1500
            WHEN salary > 20000 AND salary <= 40000 THEN 1000
            WHEN salary > 40000 THEN 500
            ELSE 0
        END);
END ;