IF salary > 40000
THEN
    INSERT INTO employee_bonus ( eb_employee_id, eb_bonus_amt )
    VALUES ( employee_id, 500 ) ;
    UPDATE emp_employee SET emp_bonus_given = 1 
    WHERE emp_employee_id = employee_id ;
END IF ;