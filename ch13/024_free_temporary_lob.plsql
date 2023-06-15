DECLARE
   temp_clob   CLOB;
   temp_blob   BLOB;
BEGIN
   --Assigning a value to a null CLOB or BLOB variable causes
   --PL/SQL to implicitly create a session-duration temporary
   --LOB for you.
   temp_clob := 'http://www.exploringthenorth.com/alger/alger.html';
   temp_blob := HEXTORAW ('7A');
   
   -- PL/SQL will implicitly free temporary LOBs when they go 
   -- out of scope at the end of the block.
   DBMS_LOB.freetemporary (temp_clob);
   DBMS_LOB.freetemporary (temp_blob);
END;
/