DROP TABLE error_log;
DROP SEQUENCE error_seq ;

CREATE SEQUENCE error_seq;

CREATE TABLE error_log
(error_id     NUMBER,
 username     VARCHAR2(30),
 error_number NUMBER,
 error_msg    VARCHAR2(1000),
 sequence     NUMBER,
 timestamp    DATE);

