SELECT username, command, server, schemaname, osuser, process, machine FROM V$SESSION ;
SELECT PID, SOSID, SPID, PNAME, USERNAME, PROGRAM FROM V$PROCESS ;