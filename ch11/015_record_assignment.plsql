DECLARE
   TYPE first_rectype IS RECORD (var1 VARCHAR2 (100):= 'WHY NOT');

   first_rec   first_rectype;

   TYPE second_rectype IS RECORD (nested_rec first_rectype:= first_rec);
BEGIN
   NULL;
END;
/