DECLARE
   -- A list of dates
   TYPE birthdays_tt IS TABLE OF DATE
                           INDEX BY PLS_INTEGER;

   -- A list of company IDs
   TYPE company_keys_tt IS TABLE OF company.company_id%TYPE NOT NULL
                              INDEX BY PLS_INTEGER;

   -- A list of book records; this structure allows you to make a "local"
   -- copy of the book table in your PL/SQL program.
   TYPE booklist_tt IS TABLE OF books%ROWTYPE
                          INDEX BY NATURAL;

   -- Each collection is organized by the author name.
   TYPE books_by_author_tt IS TABLE OF books%ROWTYPE
                                 INDEX BY books.author%TYPE;

   -- A collection of collections
   TYPE private_collection_tt IS TABLE OF books_by_author_tt
                                    INDEX BY VARCHAR2 (100);
BEGIN
   NULL;
END;
/