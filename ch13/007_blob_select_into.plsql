DECLARE
   photo   BLOB;
BEGIN
   SELECT falls_photo
     INTO photo
     FROM waterfalls
    WHERE falls_name = 'Dryer Hose';
-- EXCEPTION
--     WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('No data found.');
END;
/