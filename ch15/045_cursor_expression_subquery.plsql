CREATE OR REPLACE PROCEDURE emp_report (p_locid NUMBER)
IS
   TYPE refcursor IS REF CURSOR;

   -- The query returns only 2 columns, but the second column is
   -- a cursor that lets us traverse a set of related information.
   CURSOR all_in_one_cur
   IS
      SELECT l.city
           , cursor(SELECT d.department_name
                         , cursor (SELECT e.last_name
                                     FROM employees e
                                    WHERE e.department_id = d.department_id)
                              AS ename
                      FROM departments d
                     WHERE l.location_id = d.location_id)
                AS dname
        FROM locations l
       WHERE l.location_id = p_locid;

   departments_cur   refcursor;
   employees_cur     refcursor;

   v_city            locations.city%TYPE;
   v_dname           departments.department_name%TYPE;
   v_ename           employees.last_name%TYPE;
BEGIN
   OPEN all_in_one_cur;

   LOOP
      FETCH all_in_one_cur
      INTO v_city, departments_cur;

      EXIT WHEN all_in_one_cur%NOTFOUND;

      -- Now I can loop through departments and I do NOT need to
      -- explicitly open that cursor. Oracle did it for me.
      LOOP
         FETCH departments_cur
         INTO v_dname, employees_cur;

         EXIT WHEN departments_cur%NOTFOUND;

         -- Now I can loop through employees for that department.
         -- Again, I do not need to open the cursor explicitly.
         LOOP
            FETCH employees_cur
            INTO v_ename;

            EXIT WHEN employees_cur%NOTFOUND;
            DBMS_OUTPUT.put_line (v_city || ' ' || v_dname || ' ' || v_ename);
         END LOOP;
      END LOOP;
   END LOOP;

   CLOSE all_in_one_cur;
END;
/
