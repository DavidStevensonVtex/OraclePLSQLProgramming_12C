DECLARE
   TYPE book_info_rt IS RECORD (
      author             books.author%TYPE
    , category           VARCHAR2 (100)
    , total_page_count   POSITIVE
   );

   steven_as_author   book_info_rt;
BEGIN
   steven_as_author.author := 'Steven Feuerstein' ;
   steven_as_author.category := 'Technology' ;
   steven_as_author.total_page_count := 1340 ;
   DBMS_OUTPUT.PUT_LINE('Author: ' || steven_as_author.author || 
        ' Category: ' || steven_as_author.category || 
        ' Page Count: ' || steven_as_author.total_page_count);
END;
/