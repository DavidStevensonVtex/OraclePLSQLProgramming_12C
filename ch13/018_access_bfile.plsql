DECLARE
   web_page   BFILE;
   html       RAW (32767);
   amount     BINARY_INTEGER := 32767 ;
   offset     INTEGER := 1;
BEGIN
   --Retrieve the LOB locator for the web page
   SELECT falls_web_page
     INTO web_page
     FROM waterfalls
    WHERE falls_name = 'Tannery Falls';

    -- DBMS_OUTPUT.PUT_LINE(DBMS_LOB.MAXBUFSIZE);
    DBMS_OUTPUT.PUT_LINE(DBMS_LOB.getlength(web_page));

   --Open the locator, read 60 bytes, and close the locator
   DBMS_LOB.open (web_page);
   DBMS_LOB.read (web_page, amount, offset, html);
   DBMS_LOB.close (web_page);

   --Uncomment following line to display results in hex
   --DBMS_OUTPUT.PUT_LINE(RAWTOHEX(html));

   --Cast RAW results to a character string we can read
   DBMS_OUTPUT.put_line (UTL_RAW.cast_to_varchar2 (html));
END;
/