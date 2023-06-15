DECLARE
   /* Define the REF CURSOR type. */
   TYPE curvar_type IS REF CURSOR
      RETURN company%ROWTYPE;

   /* Reference it in the parameter list. */
   PROCEDURE open_query (curvar_out OUT curvar_type)
   IS
      local_cur   curvar_type;
   BEGIN
      OPEN local_cur FOR
         SELECT *
           FROM company;

      curvar_out := local_cur;
   END;
BEGIN
   NULL;
END;
/
