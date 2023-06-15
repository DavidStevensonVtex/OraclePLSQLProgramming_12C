DECLARE
   first_book    summer.reading_list_rt;
   second_book   summer.reading_list_rt;
BEGIN
   summer.must_read.finish_by := TO_DATE ('01-AUG-2009', 'DD-MON-YYYY');
   first_book := summer.must_read;

   second_book.favorite_author := 'Hobb, Robin';
   second_book.title := 'Assassin''s Apprentice';
   second_book.finish_by := TO_DATE ('01-SEP-2009', 'DD-MON-YYYY');
END;
/