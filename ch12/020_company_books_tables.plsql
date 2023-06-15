DROP TABLE company
/

CREATE TABLE company
(
   company_id     NUMBER (38)
 , order_amount   NUMBER
 , name           VARCHAR2 (100 BYTE)
)
/

DROP TABLE books CASCADE CONSTRAINTS
/

CREATE TABLE books
(
   book_id          NUMBER (38)
 , isbn             VARCHAR2 (13 BYTE)
 , title            VARCHAR2 (200 BYTE)
 , summary          VARCHAR2 (2000 BYTE)
 , author           VARCHAR2 (200 BYTE)
 , date_published   DATE
 , page_count       NUMBER
)
/