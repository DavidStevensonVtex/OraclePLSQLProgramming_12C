DECLARE
   myname   employees.last_name%TYPE;
   mysal    employees.salary%TYPE;
BEGIN
   ROLLBACK;

   FOR rec IN (SELECT *
                 FROM employees)
   LOOP
         UPDATE employees
            SET salary = salary * 1.5
          WHERE employee_id = rec.employee_id
      RETURNING salary, last_name
           INTO mysal, myname;

      DBMS_OUTPUT.put_line ('New salary for ' || myname || ' = ' || mysal);
   END LOOP;

   ROLLBACK;
END;
/