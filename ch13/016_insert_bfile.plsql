DECLARE
   web_page   BFILE;
BEGIN
   --Delete row for Tannery Falls so this example can
   --be executed multiple times
   DELETE FROM waterfalls
         WHERE falls_name = 'Tannery Falls';

   --Invoke BFILENAME to create a BFILE locator
   web_page := BFILENAME ('BFILE_DATA', 'Tannery_Falls.htm');

   --Save our new locator in the waterfalls table
   INSERT INTO waterfalls (falls_name, falls_web_page
                          )
       VALUES ('Tannery Falls', web_page
              );
END;
/
