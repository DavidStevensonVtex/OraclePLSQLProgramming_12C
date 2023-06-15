BEGIN
   INSERT INTO fallsxml
       VALUES (
                  1
                , xmltype.createxml('<?xml version="1.0"?>
        <fall>
           <name>Munising Falls</name>
           <county>Alger</county>
           <state>MI</state>
           <url>
              http://michiganwaterfalls.com/munising_falls/munising_falls.html
           </url>
        </fall>')
              );

   INSERT INTO fallsxml
       VALUES (
                  2
                , xmltype.createxml('<?xml version="1.0"?>
        <fall>
           <name>Au Train Falls</name>
           <county>Alger</county>
           <state>MI</state>
           <url>
              http://michiganwaterfalls.com/autrain_falls/autrain_falls.html
           </url>
        </fall>')
              );

   INSERT INTO fallsxml
       VALUES (
                  3
                , xmltype.createxml('<?xml version="1.0"?>
        <fall>
           <name>Laughing Whitefish Falls</name>
           <county>Alger</county>
           <state>MI</state>
           <url>
             http://michiganwaterfalls.com/whitefish_falls/whitefish_falls.html
           </url>
        </fall>')
              );
END;
/