DROP TABLE comedian
/
DROP TABLE joke
/
DROP TABLE joke_category
/
DROP TABLE response
/

CREATE TABLE comedian
(
   joker_id     INTEGER
 , name         VARCHAR2 (100)
 , started_on   DATE
)
/

CREATE TABLE response
(
   joke_id        INTEGER
 , joker_id       INTEGER
 , laugh_volume   NUMBER
)
/

CREATE TABLE joke_category (category_id INTEGER, name VARCHAR2 (100))
/

CREATE TABLE joke
(
   joke_id          INTEGER
 , name             VARCHAR2 (100)
 , category         INTEGER
 , last_used_date   DATE
 , punch_line       VARCHAR2 (1000)
)
/
