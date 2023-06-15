DECLARE
   parents    first_names_t := first_names_t ();
   children   child_names_t := child_names_t ();
BEGIN
   parents.EXTEND (2);
   parents (1) := 'Samuel';
   parents (2) := 'Charina';
   --
   children.EXTEND;
   children (1) := 'Feather';

   --
   INSERT INTO family (surname, parent_names, children_names
                      )
       VALUES ('Assurty', parents, children
              );

   COMMIT;
END;
/

SELECT *
  FROM family
/