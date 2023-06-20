DROP TABLE books
/

CREATE TABLE books
(
   author       VARCHAR2 (100) NOT NULL
 , title        VARCHAR2 (250) NOT NULL
 , page_count   NUMBER (5)
 , CONSTRAINT pk_books PRIMARY KEY (author, title)
)
/

INSERT INTO books ( author, title, page_count ) VALUES ( 'Steven Feuerstein', 'Oracle PL/SQL Programming, Sixth Edition', 1380 ) ;
/
INSERT INTO books ( author, title, page_count ) VALUES ( 'Benjamin Rosenzweig', 'Oracle PL/SQL By Example', 480 ) ;
/
INSERT INTO books ( author, title, page_count ) VALUES ( 'Joel Murach', 'Murach''s Oracle SQL and PL/SQL for Developers, 2nd Edition', 632 ) ;
/