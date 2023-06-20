CREATE OR REPLACE PACKAGE book_info
IS
   CURSOR byauthor_cur (
      author_in   IN   books.author%TYPE
   )
   IS
      SELECT *
        FROM books
       WHERE author = author_in;

   CURSOR bytitle_cur (
      title_filter_in  IN   books.title%TYPE
   ) RETURN books%ROWTYPE;

   TYPE author_summary_rt IS RECORD (
      author                        books.author%TYPE,
      total_page_count              PLS_INTEGER,
      total_book_count              PLS_INTEGER);

   CURSOR summary_cur (
      author_in   IN   books.author%TYPE
   ) RETURN author_summary_rt;

   PROCEDURE display ( 
      book_rec IN books%ROWTYPE
   );
 
END book_info;
/

CREATE OR REPLACE PACKAGE BODY book_info
IS
   CURSOR bytitle_cur (
      title_filter_in   IN   books.title%TYPE
   ) RETURN books%ROWTYPE
   IS
      SELECT *
        FROM books
       WHERE title LIKE UPPER (title_filter_in);

   CURSOR summary_cur (
      author_in   IN   books.author%TYPE
   ) RETURN author_summary_rt
   IS
      SELECT author, SUM (page_count), COUNT (*)
        FROM books
       WHERE author = author_in;
   
   PROCEDURE display (
      book_rec IN books%ROWTYPE
   )
   IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE('Author: ' || book_rec.author || ' Title: ' || book_rec.title || ' Page Count: ' || book_rec.page_count);
   END;

END book_info;
/
