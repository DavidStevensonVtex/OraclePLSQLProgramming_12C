REM Initial bonuses of 20%, incremental bonuses 10%
CREATE OR REPLACE PROCEDURE time_use_merge (
   dept_in IN employees.department_id%TYPE
)
IS
BEGIN
   MERGE INTO bonuses d
        USING (SELECT employee_id, salary, department_id
                 FROM employees
                WHERE department_id = dept_in) s
           ON (d.employee_id = s.employee_id)
   WHEN MATCHED
   THEN
      UPDATE SET d.bonus = d.bonus + s.salary * .01
   WHEN NOT MATCHED
   THEN
      INSERT            (d.employee_id, d.bonus
                        )
          VALUES (s.employee_id, s.salary * 0.2
                 );
END;
/