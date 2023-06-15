DECLARE
   my_book_new_info      books%ROWTYPE;
   my_book_return_info   books%ROWTYPE;
BEGIN
   my_book_new_info.isbn := '1-56592-335-9';
   my_book_new_info.title := 'ORACLE PL/SQL PROGRAMMING';
   my_book_new_info.summary := 'General user guide and reference';
   my_book_new_info.author := 'FEUERSTEIN, STEVEN AND BILL PRIBYL';
   my_book_new_info.page_count := 1000;

   UPDATE    books
         SET ROW = my_book_new_info
       WHERE isbn = my_book_new_info.isbn
   RETURNING isbn
           , title
           , summary
           , author
           , date_published
           , page_count
        INTO my_book_return_info;
END;
/