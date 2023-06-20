DECLARE
   one_emp   personnel.emps_for_dept%ROWTYPE;
BEGIN
   personnel.open_emps_for_dept (1055);

   LOOP
      EXIT WHEN personnel.emps_for_dept%NOTFOUND;

      FETCH personnel.emps_for_dept
      INTO one_emp;
   END LOOP;

   personnel.close_emps_for_dept;
END;
/