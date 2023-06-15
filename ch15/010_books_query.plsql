column book_id format 9999999
column isbn format a15
column title format a25
column summary WORD_WRAPPED FORMAT A60
column author format a36
alter session set NLS_DATE_FORMAT = 'mm-dd-yyyy HH24:mi:ss';
alter session set NLS_DATE_FORMAT = 'mm-dd-yyyy';
set linesize 200
SELECT * FROM books ;