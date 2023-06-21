BEGIN
    INSERT INTO incremented_values values ( 1, 1 ) ;
    INSERT INTO incremented_values values ( 2, 2 ) ;
END ;
/

-- Compound:BEFORE S:1
-- Compound:BEFORE R:2
-- Following Trigger  
-- Compound:AFTER  R:3
-- Compound:AFTER  S:4
-- Compound:BEFORE S:1
-- Compound:BEFORE R:2
-- Following Trigger  
-- Compound:AFTER  R:3
-- Compound:AFTER  S:4