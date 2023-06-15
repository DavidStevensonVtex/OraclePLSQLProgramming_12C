<<demo_block>>
DECLARE
   fall   XMLTYPE;
   url    VARCHAR2 (100);
BEGIN
   --Retrieve XML for Munising Falls
   SELECT fall
     INTO demo_block.fall
     FROM fallsxml f
    WHERE f.fall_id = 1;

   --Extract and display the URL for Munising Falls
   url := fall.EXTRACT ('/fall/url/text()').getstringval;
   DBMS_OUTPUT.put_line (url);
END;
/