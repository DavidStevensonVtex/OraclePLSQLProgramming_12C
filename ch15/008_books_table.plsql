DROP TABLE books
/

CREATE TABLE books
(
   book_id          INTEGER
 , isbn             VARCHAR2 (100)
 , title            VARCHAR2 (1000)
 , summary          VARCHAR2 (4000)
 , author           VARCHAR2 (100)
 , date_published   DATE
 , page_count       INTEGER
)
/
