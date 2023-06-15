CREATE OR REPLACE TYPE person_ot IS OBJECT
   (species VARCHAR2 (100), name VARCHAR2 (100), weight NUMBER, dob DATE);
/

DECLARE
   -- The current year number; it's not going to change during my session.
   l_curr_year CONSTANT PLS_INTEGER
         := TO_NUMBER (TO_CHAR (SYSDATE, 'YYYY')) ;

   -- Using the DEFAULT keyword
   l_author   CONSTANT VARCHAR2 (100) DEFAULT 'Bill Pribyl';

   -- Declare a complex datatype as a constant
   -- this isn't just for scalars!
   l_steven CONSTANT person_ot
         := person_ot ('HUMAN'
                     , 'Steven Feuerstein'
                     , 175
                     , TO_DATE ('09-23-1958', 'MM-DD-YYYY')
                      ) ;
BEGIN
   NULL;
END;
/