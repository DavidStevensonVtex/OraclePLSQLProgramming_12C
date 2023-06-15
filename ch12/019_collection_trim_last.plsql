CREATE OR REPLACE FUNCTION pop (the_list IN OUT list_t)
   RETURN VARCHAR2
AS
   l_value   VARCHAR2 (30);
BEGIN
   IF the_list.COUNT >= 1
   THEN
      /* Save the value of the last element in the collection
      || so it can be returned
      */
      l_value := the_list (the_list.LAST);
      the_list.TRIM;
   END IF;

   RETURN l_value;
END;
/