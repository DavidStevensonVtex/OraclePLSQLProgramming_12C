IF salary > 40000 OR salary IS NULL
THEN
    give_bonus ( employee_id, 500 ) ;
END IF ;