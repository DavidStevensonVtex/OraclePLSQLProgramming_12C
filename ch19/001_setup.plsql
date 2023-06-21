/*
  || COPY_TABLES.sql
  || Create tables for demonstration of when row level
  || and statement level triggers fire
*/
-- create a table to copy rows from
CREATE TABLE from_table
(col1 NUMBER);

-- create a table to copy rows into
CREATE TABLE to_table
(col1 NUMBER);

-- populate the copy from table
BEGIN
  FOR counter IN 1..10 LOOP
    INSERT INTO from_table VALUES(counter);
  END LOOP;
END;
/

COMMIT;

SELECT * FROM from_table ;
SELECT * FROM to_table ;