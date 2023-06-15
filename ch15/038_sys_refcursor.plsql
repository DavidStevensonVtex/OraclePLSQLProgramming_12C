DECLARE
   /* Define weak REF CURSOR type, cursor variable
      and local variable */
   curvar1         sys_refcursor;
   do_you_get_it   VARCHAR2 (100);
BEGIN
   /*
   || Nested block which creates the cursor object and
   || assigns it to the curvar1 cursor variable.
   */
   DECLARE
      curvar2   sys_refcursor;
   BEGIN
      OPEN curvar2 FOR
         SELECT punch_line
           FROM joke;

      curvar1 := curvar2;
   END;

   /*
   || The curvar2 cursor variable is no longer active,
   || but "the baton" has been passed to curvar1, which
   || does exist in the enclosing block. I can therefore
   || fetch from the cursor object, through this other
   || cursor variable.
   */
   FETCH curvar1
   INTO do_you_get_it;

   CLOSE curvar1;

   DBMS_OUTPUT.PUT_LINE(do_you_get_it);
END;
/