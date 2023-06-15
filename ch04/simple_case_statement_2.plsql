CASE TRUE
WHEN salary >= 10000 AND salary <= 20000
THEN
    give_bonus(employee_id, 1500);
WHEN salary > 20000 AND salary <= 40000
THEN
    give_bonus(employee_id, 1000);
WHEN salary > 40000
THEN
    give_bonus(employee_id, 500);
ELSE
    give_bonus(employee_id, 0);
END CASE ;