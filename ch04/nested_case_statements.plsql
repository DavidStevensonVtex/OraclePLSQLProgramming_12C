CASE
WHEN salary >= 10000 
THEN
    CASE
    WHEN salary <= 20000
    THEN
        give_bonus(employee_id, 1500);
    WHEN salary > 40000
    THEN
        give_bonus(employee_id, 500);
    WHEN salary > 20000
    THEN
        give_bonus(employee_id, 1000);
    END CASE ;
ELSE
    give_bonus(employee_id, 0);
END CASE ;