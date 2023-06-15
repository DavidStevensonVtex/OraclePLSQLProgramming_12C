CREATE OR REPLACE FUNCTION calc_build_time (
   esn IN assemblies.tracking_id%TYPE
)
   RETURN dsinterval_unconstrained
IS
   start_ts   assemblies.start_time%TYPE;
BEGIN
   SELECT start_time
     INTO start_ts
     FROM assemblies
    WHERE tracking_id = esn;

   RETURN LOCALTIMESTAMP - start_ts;
END;
/
EXECUTE DBMS_OUTPUT.PUT_LINE ( calc_build_time ( 1 ) ) ;
EXECUTE DBMS_OUTPUT.PUT_LINE ( calc_build_time ( 2 ) ) ;
