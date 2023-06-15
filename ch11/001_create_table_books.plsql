DROP TABLE books
/

CREATE TABLE books
(
   book_id          INTEGER
 , isbn             VARCHAR2 (13)
 , title            VARCHAR2 (200)
 , summary          VARCHAR2 (2000)
 , author           VARCHAR2 (200)
 , date_published   DATE
 , page_count       NUMBER
)
/