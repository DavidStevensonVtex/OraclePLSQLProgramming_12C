CREATE OR REPLACE PACKAGE compensation_pkg
IS
   TYPE reward_rt IS RECORD (nm VARCHAR2 (2000), sal NUMBER, comm NUMBER);

   TYPE reward_tt IS TABLE OF reward_rt
                        INDEX BY PLS_INTEGER;
END compensation_pkg;
/

DECLARE
   holiday_bonuses   compensation_pkg.reward_tt;
BEGIN
   NULL;
END;
/