/*-- one_trigger_per_type.sql */
-- after insert statement
CREATE OR REPLACE TRIGGER after_insert_statement
AFTER INSERT ON to_table
BEGIN
  DBMS_OUTPUT.PUT_LINE('After Insert Statement');
END;
/

-- after update statement
CREATE OR REPLACE TRIGGER after_update_statement
AFTER UPDATE ON to_table
BEGIN
  DBMS_OUTPUT.PUT_LINE('After Update Statement');
END;
/

-- after delete statement
CREATE OR REPLACE TRIGGER after_delete_statement
AFTER DELETE ON to_table
BEGIN
  DBMS_OUTPUT.PUT_LINE('After Delete Statement');
END;
/