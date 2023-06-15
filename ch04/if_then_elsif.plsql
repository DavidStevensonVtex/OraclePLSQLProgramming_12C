IF salary BETWEEN 10000 AND 20000
THEN
    give_bonus(employee_id, 1000);
ELSIF salary BETWEEN 20000 AND 40000
THEN
    give_bonus(employee_id, 1000);
ELSIF salary > 40000
THEN
    give_bonus(employee_id, 500);
ELSE
    give_bonus(employee_id, 0);
END IF ;