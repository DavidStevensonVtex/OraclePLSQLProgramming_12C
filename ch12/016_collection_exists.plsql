DECLARE
   my_list   color_tab_t := color_tab_t ();
   element   PLS_INTEGER := 1;
BEGIN
   IF my_list.EXISTS (element)
   THEN
      my_list (element) := NULL;
   END IF;
END;
/