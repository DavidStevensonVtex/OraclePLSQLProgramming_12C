CREATE OR REPLACE PROCEDURE push (the_list  IN OUT list_t
                                , new_value IN     VARCHAR2
                                 )
AS
BEGIN
   the_list.EXTEND;
   the_list (the_list.LAST) := new_value;
END;
/

CREATE OR REPLACE PROCEDURE push_ten (the_list  IN OUT list_t
                                    , new_value IN     VARCHAR2
                                     )
AS
   l_copyfrom   PLS_INTEGER;
BEGIN
   the_list.EXTEND;
   l_copyfrom := the_list.LAST;
   the_list (l_copyfrom) := new_value;
   the_list.EXTEND (9, l_copyfrom);
END;
/