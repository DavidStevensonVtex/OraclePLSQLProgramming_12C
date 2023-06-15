CREATE OR REPLACE PACKAGE summer
IS
   TYPE reading_list_rt IS RECORD (
      favorite_author   VARCHAR2 (100)
    , title             VARCHAR2 (100)
    , finish_by         DATE
   );

   must_read        reading_list_rt;
   wifes_favorite   reading_list_rt;
END summer;
/

CREATE OR REPLACE PACKAGE BODY summer
IS
BEGIN                                     -- Initialization section of package
   must_read.favorite_author := 'Tepper, Sheri S.';
   must_read.title := 'Gate to Women''s Country';
END summer;
/