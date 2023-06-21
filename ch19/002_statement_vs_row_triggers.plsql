/*-- statement_vs_row.sql */
CREATE OR REPLACE TRIGGER statement_trigger
AFTER INSERT ON to_table
BEGIN
  DBMS_OUTPUT.PUT_LINE('After Insert Statement Level');
END;
/
/*-- an after row level trigger */
CREATE OR REPLACE TRIGGER row_trigger
AFTER INSERT ON to_table
FOR EACH ROW
BEGIN
  DBMS_OUTPUT.PUT_LINE('After Insert Row Level');
END;
/