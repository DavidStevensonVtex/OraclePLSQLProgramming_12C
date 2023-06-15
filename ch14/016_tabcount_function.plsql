CREATE OR REPLACE FUNCTION tabcount
   RETURN PLS_INTEGER
IS
   l_return   PLS_INTEGER;
BEGIN
   SELECT COUNT ( * )
     INTO l_return
     FROM books;

   RETURN l_return;
END tabcount;
/