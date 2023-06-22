CREATE OR REPLACE TRIGGER before_logoff
   BEFORE LOGOFF
   ON DATABASE
BEGIN
   gather_session_stats;
END;
/