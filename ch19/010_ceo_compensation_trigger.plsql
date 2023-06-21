CREATE OR REPLACE TRIGGER bef_ins_ceo_comp
   BEFORE INSERT
   ON ceo_compensation
   FOR EACH ROW
DECLARE
   PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
   INSERT INTO ceo_comp_history
       VALUES (
                  :new.name
                , :old.compensation
                , :new.compensation
                , 'AFTER INSERT'
                , SYSDATE
              );

   COMMIT;
END;
/