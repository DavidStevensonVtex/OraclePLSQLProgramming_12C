CREATE OR REPLACE TRIGGER brake_on_raises
    BEFORE UPDATE OF salary ON employees
    FOR EACH ROW
DECLARE 
    l_curr_max NUMBER ;
    msg         VARCHAR(100) ;
BEGIN
    SELECT MAX(salary) 
    INTO l_curr_max
    FROM employees
    WHERE department_id = :NEW.department_id ;

    IF l_curr_max * 1.20 < :NEW.salary
    THEN
        msg := 'Employee ID: ' || TO_CHAR(:NEW.employee_id) || 
            ' Salary increase too large: Old salary: $' || 
                TO_CHAR(:OLD.salary, '999G999D99') ||
                ' New salary: $' || TO_CHAR(:NEW.salary, '999G999D99');

        errpkg.RAISE ( -24382, msg );       -- en_salary_increase_too_large
    END IF ;
END ;
/

UPDATE employees SET salary = salary * 2 WHERE employee_id = 100 ;
ROLLBACK ;

-- ERROR at line 1:
-- ORA-04091: table SYSTEM.EMPLOYEES is mutating, trigger/function may not see it
-- ORA-06512: at "SYSTEM.BRAKE_ON_RAISES", line 5
-- ORA-04088: error during execution of trigger 'SYSTEM.BRAKE_ON_RAISES'