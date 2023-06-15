DECLARE
   names          name_varray;
   new_salaries   number_varray;
BEGIN
   populate_arrays (names, new_salaries);

   FORALL indx IN names.FIRST .. names.LAST
                 UPDATE compensation
                    SET salary = new_salaries (indx)
                  WHERE last_name = names (indx)
              RETURNING salary
      BULK COLLECT INTO new_salaries;

   ROLLBACK;
END;
/