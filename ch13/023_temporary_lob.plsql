DECLARE
   temp_clob   CLOB;
   temp_blob   BLOB;
BEGIN
   --Assigning a value to a null CLOB or BLOB variable causes
   --PL/SQL to implicitly create a session-duration temporary
   --LOB for you.
   temp_clob := ' http://www.nps.gov/piro/';
   temp_blob := HEXTORAW ('7A');
END;
/