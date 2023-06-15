IF NVL(salary, 0) <= 40000 
THEN
    give_bonus(employee_id, 0 );
ELSE
    give_bonus(employee_id, 500) ;
END IF ;